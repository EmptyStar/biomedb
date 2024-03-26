return {
  -- metadata
  name = "swamp_under",

  -- nodes
  node_dust = nil,
  node_top = nil,
  depth_top = nil,
  node_filler = nil,
  depth_filler = nil,
  node_stone = nil,
  node_riverbed = nil,
  depth_riverbed = nil,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = nil,
  node_cave_liquid = {
    "swamp:swamp_water_source",
    "default:lava_source",
  },

  -- dungeons
  node_dungeon = "swamp:mud_brick",
  node_dungeon_alt = "swamp:mud_block",
  node_dungeon_stair = nil,

  -- climate
  heat_point = 80,
  humidity_point = 98,

  -- y values
  y_min = -31000,
  y_max = -256,
  vertical_blend = nil,
}