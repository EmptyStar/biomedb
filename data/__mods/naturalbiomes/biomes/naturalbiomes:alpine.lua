return {
  -- metadata
  name = "naturalbiomes:alpine",

  -- nodes
  node_dust = nil,
  node_top = "naturalbiomes:alpine_litter",
  depth_top = 1,
  node_filler = "naturalbiomes:alpine_rock",
  depth_filler = 50,
  node_stone = nil,
  node_riverbed = "default:gravel",
  depth_riverbed = 2,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "default:stone",
  node_dungeon_alt = "default:mossycobble",
  node_dungeon_stair = "stairs:stair_cobble",

  -- climate
  heat_point = 55,
  humidity_point = 60,

  -- y values
  y_min = 30,
  y_max = 31000,
  vertical_blend = nil,
}