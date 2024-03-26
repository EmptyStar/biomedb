return {
  -- metadata
  name = "sandy_beach",

  -- nodes
  node_dust = nil,
  node_top = "nodes_nature:sand",
  depth_top = 1,
  node_filler = "nodes_nature:sand_wet_salty",
  depth_filler = 2,
  node_stone = "nodes_nature:limestone",
  node_riverbed = "nodes_nature:sand_wet",
  depth_riverbed = 4,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = "air",
  node_cave_liquid = {
    "nodes_nature:freshwater_source",
  },

  -- dungeons
  node_dungeon = "nodes_nature:limestone_brick",
  node_dungeon_alt = nil,
  node_dungeon_stair = "stairs:stair_limestone_block",

  -- climate
  heat_point = 50,
  humidity_point = 50,

  -- y values
  y_min = 1,
  y_max = 5,
  vertical_blend = 1,
}