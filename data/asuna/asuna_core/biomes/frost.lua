return {
  -- metadata
  name = "frost",

  -- nodes
  node_dust = "default:snow",
  node_top = "ethereal:crystal_dirt",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 3,
  node_stone = "default:cave_ice",
  node_riverbed = "default:sand",
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "too_many_stones:granite_blue_brick",
  node_dungeon_alt = "too_many_stones:granite_blue_cracked_brick",
  node_dungeon_stair = "stairs:stair_granite_blue_brick",

  -- climate
  heat_point = 3,
  humidity_point = 97,

  -- y values
  y_min = 4,
  y_max = 31000,
  vertical_blend = 0,
}