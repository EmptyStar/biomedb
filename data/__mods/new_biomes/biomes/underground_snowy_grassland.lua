return {
  -- metadata
  name = "underground_snowy_grassland",

  -- nodes
  node_dust = nil,
  node_top = nil,
  depth_top = nil,
  node_filler = nil,
  depth_filler = nil,
  node_stone = "new_biomes:glowing_dirt",
  node_riverbed = nil,
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = {
    "default:river_water_source",
  },

  -- dungeons
  node_dungeon = "new_biomes:glowing_dirt",
  node_dungeon_alt = nil,
  node_dungeon_stair = "new_biomes:gdws",

  -- climate
  heat_point = 20,
  humidity_point = 40,

  -- y values
  y_min = -31000,
  y_max = -29000,
  vertical_blend = 10,
}