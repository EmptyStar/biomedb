return {
  -- metadata
  name = "desert",

  -- nodes
  node_dust = nil,
  node_top = "default:desert_sand",
  depth_top = 1,
  node_filler = "default:desert_sand",
  depth_filler = 3,
  node_stone = "default:desert_stone",
  node_riverbed = "default:sand",
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "default:sandstonebrick",
  node_dungeon_alt = "default:sandstonebrick",
  node_dungeon_stair = "stairs:stair_sandstonebrick",

  -- climate
  heat_point = 52,
  humidity_point = 11,

  -- y values
  y_min = 4,
  y_max = 31000,
  vertical_blend = 6,
}