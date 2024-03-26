return {
  -- metadata
  name = "snowy_grassland",

  -- nodes
  node_dust = "default:snow",
  node_top = "default:dirt_with_snow",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 1,
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
  heat_point = 20,
  humidity_point = 35,

  -- y values
  y_min = 4,
  y_max = 31000,
  vertical_blend = nil,
}