return {
  -- metadata
  name = "underground",

  -- nodes
  node_dust = nil,
  node_top = nil,
  depth_top = nil,
  node_filler = nil,
  depth_filler = nil,
  node_stone = "nodes_nature:granite",
  node_riverbed = nil,
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = {
    "nodes_nature:freshwater_source",
  },

  -- dungeons
  node_dungeon = "nodes_nature:granite_brick",
  node_dungeon_alt = nil,
  node_dungeon_stair = "stairs:stair_granite_block",

  -- climate
  heat_point = 50,
  humidity_point = 50,

  -- y values
  y_min = -1500,
  y_max = -120,
  vertical_blend = 20,
}