return {
  -- metadata
  name = "mesa_ocean",

  -- nodes
  node_dust = nil,
  node_top = "default:sand",
  depth_top = 1,
  node_filler = "default:sand",
  depth_filler = 2,
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
  node_dungeon = "default:cobble",
  node_dungeon_alt = "default:mossycobble",
  node_dungeon_stair = "stairs:stair_cobble",

  -- climate
  heat_point = 25,
  humidity_point = 28,

  -- y values
  y_min = -192,
  y_max = 2,
  vertical_blend = nil,
}