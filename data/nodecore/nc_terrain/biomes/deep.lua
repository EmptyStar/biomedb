return {
  -- metadata
  name = "deep",

  -- nodes
  node_dust = nil,
  node_top = nil,
  depth_top = 0,
  node_filler = nil,
  depth_filler = 0,
  node_stone = nil,
  node_riverbed = nil,
  depth_riverbed = 0,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "nc_terrain:dungeon_cobble",
  node_dungeon_alt = "nc_terrain:dungeon_cobble_alt",
  node_dungeon_stair = "nc_terrain:dungeon_cobble_stair",

  -- climate
  heat_point = 0,
  humidity_point = 0,

  -- y values
  y_min = -31000,
  y_max = -80,
  vertical_blend = nil,
}