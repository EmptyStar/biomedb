return {
  -- metadata
  name = "glacier",

  -- nodes
  node_dust = "default:snowblock",
  node_top = "default:snowblock",
  depth_top = 1,
  node_filler = "default:snowblock",
  depth_filler = 3,
  node_stone = "default:ice",
  node_riverbed = "default:gravel",
  depth_riverbed = 2,

  -- liquids
  node_water_top = "default:ice",
  depth_water_top = 10,
  node_water = nil,
  node_river_water = "default:ice",
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "ethereal:icebrick",
  node_dungeon_alt = nil,
  node_dungeon_stair = "stairs:stair_ice",

  -- climate
  heat_point = 0,
  humidity_point = 50,

  -- y values
  y_min = -8,
  y_max = 31000,
  vertical_blend = nil,
}