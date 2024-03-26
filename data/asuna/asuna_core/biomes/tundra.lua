return {
  -- metadata
  name = "tundra",

  -- nodes
  node_dust = nil,
  node_top = "default:permafrost_with_stones",
  depth_top = 1,
  node_filler = "default:permafrost",
  depth_filler = 1,
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
  node_dungeon = "too_many_stones:granite_gray_brick",
  node_dungeon_alt = "too_many_stones:granite_gray_cracked_brick",
  node_dungeon_stair = "stairs:stair_granite_gray_brick",

  -- climate
  heat_point = 11,
  humidity_point = 16,

  -- y values
  y_min = 4,
  y_max = 40,
  vertical_blend = 2,
}