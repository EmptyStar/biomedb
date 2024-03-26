return {
  -- metadata
  name = "caves",

  -- nodes
  node_dust = nil,
  node_top = "default:desert_stone",
  depth_top = 3,
  node_filler = "air",
  depth_filler = 8,
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
  heat_point = 15,
  humidity_point = 25,

  -- y values
  y_min = 4,
  y_max = 41,
  vertical_blend = nil,
}