return {
  -- metadata
  name = "underground",

  -- nodes
  node_dust = nil,
  node_top = "default:stone",
  depth_top = 1,
  node_filler = "default:stone",
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
  node_dungeon = "default:cobble",
  node_dungeon_alt = "default:mossycobble",
  node_dungeon_stair = "stairs:stair_cobble",

  -- climate
  heat_point = 50,
  humidity_point = 50,

  -- y values
  y_min = -31000,
  y_max = -31000,
  vertical_blend = 0,
}