return {
  -- metadata
  name = "everness:frosted_icesheet_ocean",

  -- nodes
  node_dust = nil,
  node_top = "default:sand",
  depth_top = 1,
  node_filler = "default:sand",
  depth_filler = 3,
  node_stone = nil,
  node_riverbed = nil,
  depth_riverbed = nil,

  -- liquids
  node_water_top = "everness:frosted_ice",
  depth_water_top = 2,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = "mapgen_water_source",

  -- dungeons
  node_dungeon = "everness:icecobble",
  node_dungeon_alt = "everness:snowcobble",
  node_dungeon_stair = "stairs:stair_ice",

  -- climate
  heat_point = 0,
  humidity_point = 93,

  -- y values
  y_min = -255,
  y_max = -9,
  vertical_blend = nil,
}