-- Globals
biomedb_explorer = {
  init = false,
  mods = {},
  metascanners = {},
}

-- Define names and filesystem paths
local modpath = minetest.get_modpath("zzz_biomedb_explorer")
local gamename = minetest.get_game_info().id
local worldpath =  minetest.get_worldpath()
local biomedbdir = worldpath .. '/biomedb/'
local gamedir = biomedbdir .. gamename .. '/'

-- Create BiomeDB directory for the current world and game
minetest.mkdir(gamedir)

-- Output function for biome definition transcription
local function transcribe(value)
  if type(value) == "string" then
    return ('"' .. value .. '"')
  elseif type(value) == "table" then
    local list = "{\n"
    for _,v in ipairs(value) do
      list = list .. '    "' .. v .. '",\n'
    end
    return list .. "  }"
  elseif type(value) == "number" then
    return value
  else
    return "nil"
  end
end

-- Biome registration code template
local biometext = [[
return {
  -- metadata
  name = "%s",

  -- nodes
  node_dust = %s,
  node_top = %s,
  depth_top = %s,
  node_filler = %s,
  depth_filler = %s,
  node_stone = %s,
  node_riverbed = %s,
  depth_riverbed = %s,

  -- liquids
  node_water_top = %s,
  depth_water_top = %s,
  node_water = %s,
  node_river_water = %s,
  node_cave_liquid = %s,

  -- dungeons
  node_dungeon = %s,
  node_dungeon_alt = %s,
  node_dungeon_stair = %s,

  -- climate
  heat_point = %s,
  humidity_point = %s,

  -- y values
  y_min = %s,
  y_max = %s,
  vertical_blend = %s,
}]]

-- Function that writes a biome definition to a file
local function biome_to_file(def,file)
  local cmname = minetest.get_current_modname()
  minetest.safe_file_write(file,string.format(biometext,
    -- metadata
    def.name,

    -- nodes
    transcribe(def.node_dust),
    transcribe(def.node_top),
    transcribe(def.depth_top),
    transcribe(def.node_filler),
    transcribe(def.depth_filler),
    transcribe(def.node_stone),
    transcribe(def.node_riverbed),
    transcribe(def.depth_riverbed),

    -- liquids
    transcribe(def.node_water_top),
    transcribe(def.depth_water_top),
    transcribe(def.node_water),
    transcribe(def.node_river_water),
    transcribe(def.node_cave_liquid),

    -- dungeons
    transcribe(def.node_dungeon),
    transcribe(def.node_dungeon_alt),
    transcribe(def.node_dungeon_stair),

    -- climate
    transcribe(def.heat_point),
    transcribe(def.humidity_point),

    -- y values
    transcribe(def.y_min),
    transcribe(def.y_max),
    transcribe(def.vertical_blend)
  ))
end

-- Biome metadata registration template
local metadatatext = [[
return {
  mod = %s,
  game = %s,
  groups = {%s},
  base = %s,
}]]

-- Function that writes biome metadata to a file
local function metadata_to_file(def,metadata,file)
  minetest.safe_file_write(file,string.format(metadatatext,
    transcribe(metadata.mod),
    transcribe(metadata.game),
    metadata:groups_to_string(),
    transcribe(metadata.base)
  ))
end

-- Automatic metadata assignment rules
local mspath = modpath .. "/metascanners/"
local metascanners = minetest.get_dir_list(mspath,false)
local metascanner_temp = {}
local max_priority = 0
for _,fn in ipairs(metascanners) do
  local priority = tonumber(fn:gsub("__.+",""),10)
  max_priority = math.max(max_priority,priority)
  metascanner_temp[priority] = metascanner_temp[priority] or {}
  table.insert(metascanner_temp[priority],dofile(mspath .. fn))
end

for i = 1, max_priority do
  local batch = metascanner_temp[i]
  if batch then
    for j = 0, #batch do
      biomedb_explorer.metascanners[#biomedb_explorer.metascanners + 1] = batch[j]
    end
  end
end

-- Write game name to file
minetest.safe_file_write(biomedbdir .. "game.txt",gamename)

-- Override minetest.register_biome for logging
if not biomedb_explorer.init then
  local omrb = minetest.register_biome
  minetest.register_biome = function(def)
    -- Delete and create directories for the current mod
    local cmname = minetest.get_current_modname()
    local moddir = gamedir .. cmname .. '/'
    local biomesdir = moddir .. "biomes/"
    local metadatadir = moddir .. "metadata/"
    if not biomedb_explorer[cmname] then
      minetest.rmdir(moddir,true)
      minetest.mkdir(moddir)
      minetest.mkdir(biomesdir)
      minetest.mkdir(metadatadir)
      biomedb_explorer[cmname] = true
    end

    -- Output the biome definition to file
    def.write_to_file = function(self)
      biome_to_file(self,biomesdir .. self.name .. ".lua")
    end
    def:write_to_file()

    -- Initialize metadata
    local metadata = {
      mod = cmname,
      game = gamename,
      groups = {},
      write_to_file = function(self)
        metadata_to_file(def,self,metadatadir .. def.name .. ".lua")
      end,
      groups_to_string = function(self)
        local gstr = ""
        for group,_ in pairs(self.groups) do
          gstr = gstr .. "    " .. group .. " = true,\n"
        end
        return #gstr > 0 and ("\n" .. gstr .. "  ") or ""
      end,
    }

    -- Process metascanners
    for _,fn in ipairs(biomedb_explorer.metascanners) do
      fn(def,metadata)
    end

    -- Output biome metadata to file
    metadata:write_to_file()

    -- Flag the mod name for later reporting
    biomedb_explorer.mods[cmname] = true

    -- Register the biome using the original function
    omrb(def)
  end
end
biomedb_explorer.init = true

-- Output observed biome mods to file
minetest.register_on_mods_loaded(function()
  local mlist = {}
  for mod,_ in pairs(biomedb_explorer.mods) do
    mlist[#mlist + 1] = mod
  end
  minetest.safe_file_write(biomedbdir .. "mods.txt",table.concat(mlist,", "))
end)