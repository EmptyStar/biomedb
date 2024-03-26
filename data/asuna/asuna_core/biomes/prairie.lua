return {
  -- metadata
  name = "prairie",

  -- nodes
  node_dust = nil,
  node_top = "prairie:prairie_dirt_with_grass",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 3,
  node_stone = "default:stone",
  node_riverbed = "default:sand",
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
  heat_point = 42,
  humidity_point = 47,

  -- y values
  y_min = 4,
  y_max = 32,
  vertical_blend = 4,
}