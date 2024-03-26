return {
  -- metadata
  name = "grove",

  -- nodes
  node_dust = nil,
  node_top = "ethereal:grove_dirt",
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
  node_dungeon = "too_many_stones:mudstone_brick",
  node_dungeon_alt = "too_many_stones:mudstone_cracked_brick",
  node_dungeon_stair = "stairs:stair_mudstone_brick",

  -- climate
  heat_point = 85,
  humidity_point = 68,

  -- y values
  y_min = 4,
  y_max = 40,
  vertical_blend = 2,
}