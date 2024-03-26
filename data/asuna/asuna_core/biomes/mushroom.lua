return {
  -- metadata
  name = "mushroom",

  -- nodes
  node_dust = nil,
  node_top = "ethereal:mushroom_dirt",
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
  node_dungeon = "too_many_stones:sugilite_brick",
  node_dungeon_alt = "too_many_stones:sugilite_cracked_brick",
  node_dungeon_stair = "stairs:stair_sugilite_brick",

  -- climate
  heat_point = 70,
  humidity_point = 100,

  -- y values
  y_min = 4,
  y_max = 24,
  vertical_blend = 4,
}