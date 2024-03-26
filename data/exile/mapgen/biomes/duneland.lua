return {
  -- metadata
  name = "duneland",

  -- nodes
  node_dust = nil,
  node_top = "nodes_nature:duneland_soil",
  depth_top = 1,
  node_filler = "nodes_nature:sand",
  depth_filler = 5,
  node_stone = "nodes_nature:limestone",
  node_riverbed = "nodes_nature:grassland_soil_wet",
  depth_riverbed = 1,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = "air",
  node_cave_liquid = {
    "nodes_nature:freshwater_source",
  },

  -- dungeons
  node_dungeon = "tech:drystack",
  node_dungeon_alt = nil,
  node_dungeon_stair = "stairs:stair_drystack",

  -- climate
  heat_point = 50,
  humidity_point = 5,

  -- y values
  y_min = 5,
  y_max = 19,
  vertical_blend = 2,
}