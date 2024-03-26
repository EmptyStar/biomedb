return {
  -- metadata
  name = "highland",

  -- nodes
  node_dust = "nodes_nature:snow",
  node_top = "nodes_nature:highland_soil",
  depth_top = 1,
  node_filler = "nodes_nature:gravel",
  depth_filler = 1,
  node_stone = "nodes_nature:limestone",
  node_riverbed = "nodes_nature:gravel_wet",
  depth_riverbed = 3,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = "nodes_nature:snow_block",
  node_cave_liquid = {
    "nodes_nature:freshwater_source",
  },

  -- dungeons
  node_dungeon = "tech:drystack",
  node_dungeon_alt = nil,
  node_dungeon_stair = "stairs:stair_drystack",

  -- climate
  heat_point = 35,
  humidity_point = 65,

  -- y values
  y_min = 100,
  y_max = 170,
  vertical_blend = 5,
}