return {
  -- metadata
  name = "frost_land",

  -- nodes
  node_dust = "default:snow",
  node_top = "frost_land:frost_land_grass",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 3,
  node_stone = nil,
  node_riverbed = "default:snowblock",
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
  heat_point = 2,
  humidity_point = 89,

  -- y values
  y_min = 4,
  y_max = 31000,
  vertical_blend = nil,
}