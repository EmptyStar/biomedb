return {
  -- metadata
  name = "everness:frosted_icesheet",

  -- nodes
  node_dust = "everness:frosted_snowblock",
  node_top = "everness:frosted_snowblock",
  depth_top = 1,
  node_filler = "everness:frosted_snowblock",
  depth_filler = 3,
  node_stone = "everness:frosted_cave_ice",
  node_riverbed = "everness:gravel",
  depth_riverbed = 2,

  -- liquids
  node_water_top = "everness:frosted_ice",
  depth_water_top = 2,
  node_water = nil,
  node_river_water = "everness:frosted_ice",
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "everness:icecobble",
  node_dungeon_alt = "everness:snowcobble",
  node_dungeon_stair = "stairs:stair_ice",

  -- climate
  heat_point = 0,
  humidity_point = 93,

  -- y values
  y_min = -8,
  y_max = 31000,
  vertical_blend = nil,
}