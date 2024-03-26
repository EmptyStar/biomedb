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
  node_riverbed = nil,
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "default:desert_stone",
  node_dungeon_alt = "",
  node_dungeon_stair = "stairs:stair_desert_stone",

  -- climate
  heat_point = 35,
  humidity_point = 20,

  -- y values
  y_min = 3,
  y_max = 23,
  vertical_blend = nil,
}