return {
  -- metadata
  name = "snowcap",

  -- nodes
  node_dust = "nodes_nature:snow",
  node_top = "nodes_nature:snow_block",
  depth_top = 2,
  node_filler = "nodes_nature:gravel",
  depth_filler = 2,
  node_stone = "nodes_nature:limestone",
  node_riverbed = "nodes_nature:gravel",
  depth_riverbed = 2,

  -- liquids
  node_water_top = "nodes_nature:ice",
  depth_water_top = 2,
  node_water = nil,
  node_river_water = "nodes_nature:ice",
  node_cave_liquid = {
    "nodes_nature:freshwater_source",
  },

  -- dungeons
  node_dungeon = "tech:drystack",
  node_dungeon_alt = nil,
  node_dungeon_stair = "stairs:stair_drystack",

  -- climate
  heat_point = 25,
  humidity_point = 75,

  -- y values
  y_min = 170,
  y_max = 31000,
  vertical_blend = 5,
}