return {
  -- metadata
  name = "Glacier",

  -- nodes
  node_dust = nil,
  node_top = "default:snowblock",
  depth_top = 2,
  node_filler = "default:ice",
  depth_filler = 32,
  node_stone = nil,
  node_riverbed = "default:gravel",
  depth_riverbed = 2,

  -- liquids
  node_water_top = "default:ice",
  depth_water_top = 3,
  node_water = nil,
  node_river_water = "default:ice",
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = nil,
  node_dungeon_alt = nil,
  node_dungeon_stair = nil,

  -- climate
  heat_point = -20,
  humidity_point = -30,

  -- y values
  y_min = 1,
  y_max = 32000,
  vertical_blend = nil,
}