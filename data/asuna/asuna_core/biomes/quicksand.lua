return {
  -- metadata
  name = "quicksand",

  -- nodes
  node_dust = nil,
  node_top = "ethereal:quicksand2",
  depth_top = 2,
  node_filler = "ethereal:quicksand2",
  depth_filler = 2,
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
  node_dungeon = "too_many_stones:mudstone_brick",
  node_dungeon_alt = "too_many_stones:mudstone_cracked_brick",
  node_dungeon_stair = "stairs:stair_mudstone_brick",

  -- climate
  heat_point = 72,
  humidity_point = 92,

  -- y values
  y_min = 0,
  y_max = 0,
  vertical_blend = 1,
}