return {
  -- metadata
  name = "outback",

  -- nodes
  node_dust = nil,
  node_top = "naturalbiomes:outback_litter",
  depth_top = 1,
  node_filler = "naturalbiomes:outback_ground",
  depth_filler = 32,
  node_stone = "default:desert_stone",
  node_riverbed = "default:sand",
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "too_many_stones:gabbro_brick",
  node_dungeon_alt = "too_many_stones:gabbro_cracked_brick",
  node_dungeon_stair = "stairs:stair_gabbro_brick",

  -- climate
  heat_point = 87,
  humidity_point = 29,

  -- y values
  y_min = 4,
  y_max = 31000,
  vertical_blend = 0,
}