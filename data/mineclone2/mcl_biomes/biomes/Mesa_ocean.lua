return {
  -- metadata
  name = "Mesa_ocean",

  -- nodes
  node_dust = nil,
  node_top = "mcl_core:sand",
  depth_top = 3,
  node_filler = "mcl_core:sand",
  depth_filler = 2,
  node_stone = nil,
  node_riverbed = "mcl_core:sand",
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
  heat_point = 100,
  humidity_point = 0,

  -- y values
  y_min = -15,
  y_max = -5,
  vertical_blend = 1,
}