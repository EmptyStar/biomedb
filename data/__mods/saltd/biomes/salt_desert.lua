return {
  -- metadata
  name = "salt_desert",

  -- nodes
  node_dust = nil,
  node_top = "saltd:salt_sand",
  depth_top = 1,
  node_filler = "saltd:salt_crystal_block",
  depth_filler = 3,
  node_stone = "default:stone",
  node_riverbed = "saltd:salt_sand",
  depth_riverbed = 2,

  -- liquids
  node_water_top = "default:water_source",
  depth_water_top = 5,
  node_water = "default:water_source",
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = nil,
  node_dungeon_alt = nil,
  node_dungeon_stair = nil,

  -- climate
  heat_point = 50,
  humidity_point = 10,

  -- y values
  y_min = 1,
  y_max = 5,
  vertical_blend = 0,
}