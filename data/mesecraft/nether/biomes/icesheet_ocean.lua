return {
  -- metadata
  name = "icesheet_ocean",

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
  node_water_top = "default:ice",
  depth_water_top = 10,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = "default:water_source",

  -- dungeons
  node_dungeon = "default:cobble",
  node_dungeon_alt = "default:mossycobble",
  node_dungeon_stair = "stairs:stair_cobble",

  -- climate
  heat_point = 0,
  humidity_point = 73,

  -- y values
  y_min = -255,
  y_max = -9,
  vertical_blend = nil,
}