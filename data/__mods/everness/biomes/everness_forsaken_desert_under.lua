return {
  -- metadata
  name = "everness:forsaken_desert_under",

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
  node_dungeon = "default:cobble",
  node_dungeon_alt = "default:mossycobble",
  node_dungeon_stair = "stairs:stair_cobble",

  -- climate
  heat_point = 100,
  humidity_point = 30,

  -- y values
  y_min = -31000,
  y_max = -256,
  vertical_blend = nil,
}