return {
  -- metadata
  name = "nether_caverns",

  -- nodes
  node_dust = nil,
  node_top = nil,
  depth_top = nil,
  node_filler = "nether:native_mapgen",
  depth_filler = nil,
  node_stone = "nether:native_mapgen",
  node_riverbed = nil,
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = "air",

  -- dungeons
  node_dungeon = "nether:brick",
  node_dungeon_alt = "nether:brick_cracked",
  node_dungeon_stair = "stairs:stair_nether_brick",

  -- climate
  heat_point = 50,
  humidity_point = 50,

  -- y values
  y_min = -11000,
  y_max = -5000,
  vertical_blend = 0,
}