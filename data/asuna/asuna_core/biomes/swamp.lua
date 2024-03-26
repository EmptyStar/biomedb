return {
  -- metadata
  name = "swamp",

  -- nodes
  node_dust = nil,
  node_top = "default:dirt_with_grass",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 3,
  node_stone = "default:stone",
  node_riverbed = "default:sand",
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "default:mossycobble",
  node_dungeon_alt = "default:mossycobble",
  node_dungeon_stair = "stairs:stair_mossycobble",

  -- climate
  heat_point = 73,
  humidity_point = 74,

  -- y values
  y_min = 1,
  y_max = 31000,
  vertical_blend = 0,
}