return {
  -- metadata
  name = "dataland",

  -- nodes
  node_dust = nil,
  node_top = "dt_nodes:data",
  depth_top = 3,
  node_filler = "dt_nodes:data_square",
  depth_filler = 6,
  node_stone = "dt_nodes:data",
  node_riverbed = nil,
  depth_riverbed = 2,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = "nodes:water_source",
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = nil,
  node_dungeon_alt = nil,
  node_dungeon_stair = nil,

  -- climate
  heat_point = nil,
  humidity_point = nil,

  -- y values
  y_min = -31000,
  y_max = -300,
  vertical_blend = nil,
}