return {
  -- metadata
  name = "MesaPlateauFM_sandlevel",

  -- nodes
  node_dust = nil,
  node_top = "mcl_core:redsand",
  depth_top = 3,
  node_filler = "mcl_colorblocks:hardened_clay_orange",
  depth_filler = 3,
  node_stone = "mcl_colorblocks:hardened_clay",
  node_riverbed = "mcl_core:redsand",
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
  heat_point = 60,
  humidity_point = -5,

  -- y values
  y_min = -7,
  y_max = 11,
  vertical_blend = 4,
}