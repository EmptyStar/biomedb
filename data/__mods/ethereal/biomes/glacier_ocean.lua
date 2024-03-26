return {
  -- metadata
  name = "glacier_ocean",

  -- nodes
  node_dust = "default:snowblock",
  node_top = "default:sand",
  depth_top = 1,
  node_filler = "default:sand",
  depth_filler = 3,
  node_stone = nil,
  node_riverbed = nil,
  depth_riverbed = nil,

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
  humidity_point = 50,

  -- y values
  y_min = -112,
  y_max = -9,
  vertical_blend = nil,
}