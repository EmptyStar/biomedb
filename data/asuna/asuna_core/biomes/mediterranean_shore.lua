return {
  -- metadata
  name = "mediterranean_shore",

  -- nodes
  node_dust = nil,
  node_top = "default:sand",
  depth_top = 1,
  node_filler = "default:stone",
  depth_filler = 15,
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
  node_dungeon = "too_many_stones:marble_brick",
  node_dungeon_alt = "too_many_stones:marble_cracked_brick",
  node_dungeon_stair = "stairs:stair_marble_brick",

  -- climate
  heat_point = 89,
  humidity_point = 32,

  -- y values
  y_min = 0,
  y_max = 3,
  vertical_blend = 1,
}