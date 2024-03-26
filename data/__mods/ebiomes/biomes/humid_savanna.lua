return {
  -- metadata
  name = "humid_savanna",

  -- nodes
  node_dust = nil,
  node_top = "ebiomes:dry_dirt_with_humid_savanna_grass",
  depth_top = 1,
  node_filler = "default:dry_dirt",
  depth_filler = 2,
  node_stone = nil,
  node_riverbed = "default:sand",
  depth_riverbed = 2,

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
  heat_point = 89,
  humidity_point = 54,

  -- y values
  y_min = 1,
  y_max = 31000,
  vertical_blend = nil,
}