return {
  -- metadata
  name = "everness:crystal_forest_under",

  -- nodes
  node_dust = nil,
  node_top = nil,
  depth_top = nil,
  node_filler = nil,
  depth_filler = nil,
  node_stone = nil,
  node_riverbed = nil,
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = {
    "mapgen_water_source",
    "mapgen_lava_source",
  },

  -- dungeons
  node_dungeon = "everness:crystal_cobble",
  node_dungeon_alt = "everness:crystal_mossy_cobble",
  node_dungeon_stair = "stairs:stair_crystal_cobble",

  -- climate
  heat_point = 35,
  humidity_point = 50,

  -- y values
  y_min = -31000,
  y_max = -256,
  vertical_blend = nil,
}