return {
  -- metadata
  name = "naturalbiomes:outback",

  -- nodes
  node_dust = nil,
  node_top = "naturalbiomes:outback_litter",
  depth_top = 1,
  node_filler = "naturalbiomes:outback_ground",
  depth_filler = 50,
  node_stone = nil,
  node_riverbed = "default:clay",
  depth_riverbed = 2,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "default:sandstone",
  node_dungeon_alt = "default:desert_stonebrick",
  node_dungeon_stair = "stairs:stair_desert_stone",

  -- climate
  heat_point = 82,
  humidity_point = 32,

  -- y values
  y_min = 3,
  y_max = 40,
  vertical_blend = nil,
}