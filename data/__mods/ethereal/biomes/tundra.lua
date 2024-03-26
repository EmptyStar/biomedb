return {
  -- metadata
  name = "tundra",

  -- nodes
  node_dust = nil,
  node_top = "default:permafrost_with_stones",
  depth_top = 1,
  node_filler = "default:permafrost",
  depth_filler = 1,
  node_stone = nil,
  node_riverbed = "default:gravel",
  depth_riverbed = 2,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = nil,
  node_dungeon_alt = nil,
  node_dungeon_stair = nil,

  -- climate
  heat_point = 0,
  humidity_point = 40,

  -- y values
  y_min = 2,
  y_max = 46,
  vertical_blend = 4,
}