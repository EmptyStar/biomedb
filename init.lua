--
-- Globals
--

biomedb = {}

--
-- Aggregates definition
--

local aggregates = {
  name = true,
  node_dust = true,
  node_top = true,
  node_filler = true,
  node_stone = true,
  node_riverbed = true,
  node_water_top = true,
  node_water = true,
  node_river_water = true,
  node_cave_liquid = true,
  node_dungeon = true,
  node_dungeon_alt = true,
  node_dungeon_stair = true,
  mod = true,
  game = true,
  groups = true,
  base = true,
}

local function annotate_biome(biome,property,value)
  biome[property] = value
  aggregates[property] = true
end

--
-- Load known biomes and metadata
--

local biomedb_biomes = {}
local loaded_biomes = {}
local game_id = minetest.get_game_info().id

local dpath = minetest.get_modpath("biomedb") .. "/data/"
local bgames = minetest.get_dir_list(dpath,true)
for _,bgame in ipairs(bgames) do
  local bmods = minetest.get_dir_list(dpath .. bgame,true)
  for _,bmod in ipairs(bmods) do
    -- Get filesystem paths to database files
    local mpath = dpath .. bgame .. "/" .. bmod .. "/"
    local mbiomes = mpath .. "biomes/"
    local mmetadata = mpath .. "metadata/"

    -- Capture mod path
    if loaded_biomes[bmod] == nil then
      loaded_biomes[bmod] = minetest.get_modpath(bmod) or false
    end

    -- Load in-memory database from database files
    local bfiles = minetest.get_dir_list(mbiomes,false)
    for _,bfile in ipairs(bfiles) do
      local bdef = dofile(mbiomes .. bfile)
      local mdef = dofile(mmetadata .. bfile)
      for k,v in pairs(mdef) do
        bdef[k] = v
      end

      -- Add runtime metadata
      bdef.is_loaded = (bdef.game == nil or bdef.game == game_id) and
      loaded_biomes[bdef.mod] and
      minetest.registered_biomes[bdef.name] and
      true or false
      bdef.annotate = annotate_biome

      -- Index biome + metadata
      biomedb_biomes[#biomedb_biomes + 1] = bdef
    end
  end
end

-- Create a new biomeset with its own data and functions
local function biomeset()
  local biomes = {}

  -- Public API for BiomeDB biome sets
  local api = {
    -- Iterate over the biomes in this set
    foreach = function(self,fn)
      for _,biome in ipairs(biomes) do
        fn(biome)
      end
    end,
    count = function()
      return #biomes
    end,
  }

  -- Aggregation function generator for biome property aggregation over
  -- multiple biomes
  local function aggregator(api,property)
    return function(self)
      local pset = {}
      self:foreach(function(biome)
        if biome[property] then
          local pvalue = biome[property]
          if type(pvalue) == "string" then
            pset[pvalue] = true
          elseif type(pvalue) == "table" then
            if pvalue[1] then
              for i,v in ipairs(pvalue) do
                pset[v] = true
              end
            else
              for k,v in pairs(pvalue) do
                pset[k] = true
              end
            end
          end
        end
      end)

      local plist = {}
      for pvalue,_ in pairs(pset) do
        plist[#plist + 1] = pvalue
      end

      return plist
    end
  end

  -- Generate aggregator functions for supported biome properties
  for property,_ in pairs(aggregates) do
    api[property] = aggregator(api,property)
  end

  return biomes, api
end

-- Select biomes with a given selection function
function biomedb.select(fn)
  local biomes, api = biomeset()
  for _,biome in ipairs(biomedb_biomes) do
    if fn(biome) then
      biomes[#biomes + 1] = biome
    end
  end

  return api
end