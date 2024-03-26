return {
  -- metadata
  name = "upland_grassland",

  -- nodes
  node_dust = "nodes_nature:snow",
  node_top = "nodes_nature:grassland_soil",
  depth_top = 1,
  node_filler = "nodes_nature:clay",
  depth_filler = 2,
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
  humidity_point = 50,

  -- y values
  y_min = 90,
  y_max = 100,
  vertical_blend = 5,
}