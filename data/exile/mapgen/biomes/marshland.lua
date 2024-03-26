return {
  -- metadata
  name = "marshland",

  -- nodes
  node_dust = nil,
  node_top = "nodes_nature:marshland_soil_wet",
  depth_top = 1,
  node_filler = "nodes_nature:silt_wet",
  depth_filler = 6,
  node_stone = "nodes_nature:limestone",
  node_riverbed = "nodes_nature:silt_wet",
  depth_riverbed = 5,

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
  heat_point = 75,
  humidity_point = 95,

  -- y values
  y_min = 5,
  y_max = 9,
  vertical_blend = 2,
}