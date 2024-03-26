return {
  -- metadata
  name = "alpine",

  -- nodes
  node_dust = nil,
  node_top = "naturalbiomes:alpine_litter",
  depth_top = 1,
  node_filler = "naturalbiomes:alpine_rock",
  depth_filler = 32,
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
  node_dungeon = "too_many_stones:granite_white_brick",
  node_dungeon_alt = "too_many_stones:granite_white_cracked_brick",
  node_dungeon_stair = "stairs:stair_granite_white_brick",

  -- climate
  heat_point = 25,
  humidity_point = 36,

  -- y values
  y_min = 4,
  y_max = 31000,
  vertical_blend = 0,
}