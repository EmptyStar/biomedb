return {
  -- metadata
  name = "glacier_below",

  -- nodes
  node_dust = nil,
  node_top = "default:stone",
  depth_top = 0,
  node_filler = "default:stone",
  depth_filler = 0,
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
  node_dungeon = "too_many_stones:howlite_brick",
  node_dungeon_alt = "too_many_stones:howlite_cracked_brick",
  node_dungeon_stair = "stairs:stair_howlite_brick",

  -- climate
  heat_point = 2,
  humidity_point = 51,

  -- y values
  y_min = -31000,
  y_max = -1,
  vertical_blend = 0,
}