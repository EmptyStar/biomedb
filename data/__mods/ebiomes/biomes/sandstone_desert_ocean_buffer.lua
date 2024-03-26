return {
  -- metadata
  name = "sandstone_desert_ocean_buffer",

  -- nodes
  node_dust = nil,
  node_top = "default:sand",
  depth_top = 1,
  node_filler = "default:sand",
  depth_filler = 3,
  node_stone = "default:sandstone",
  node_riverbed = "default:sand",
  depth_riverbed = 2,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = "default:water_source",

  -- dungeons
  node_dungeon = "default:sandstonebrick",
  node_dungeon_alt = nil,
  node_dungeon_stair = "stairs:stair_sandstone_block",

  -- climate
  heat_point = 60,
  humidity_point = 15,

  -- y values
  y_min = -255,
  y_max = 3,
  vertical_blend = nil,
}