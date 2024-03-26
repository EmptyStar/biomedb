return {
  -- metadata
  name = "redwood_forest",

  -- nodes
  node_dust = nil,
  node_top = "redw:dirt_with_grass",
  depth_top = 1,
  node_filler = "redw:dirt",
  depth_filler = 8,
  node_stone = "redw:sandstone",
  node_riverbed = "redw:dirt",
  depth_riverbed = 2,

  -- liquids
  node_water_top = "default:water_source",
  depth_water_top = 5,
  node_water = "default:water_source",
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = nil,
  node_dungeon_alt = nil,
  node_dungeon_stair = nil,

  -- climate
  heat_point = 51.7,
  humidity_point = 91.7,

  -- y values
  y_min = 1,
  y_max = 31000,
  vertical_blend = nil,
}