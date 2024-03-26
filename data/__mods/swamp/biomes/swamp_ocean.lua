return {
  -- metadata
  name = "swamp_ocean",

  -- nodes
  node_dust = nil,
  node_top = "swamp:mud",
  depth_top = 1,
  node_filler = "swamp:mud",
  depth_filler = 3,
  node_stone = nil,
  node_riverbed = "swamp:mud",
  depth_riverbed = 2,

  -- liquids
  node_water_top = nil,
  depth_water_top = nil,
  node_water = nil,
  node_river_water = "swamp:swamp_water_source",
  node_cave_liquid = "swamp:swamp_water_source",

  -- dungeons
  node_dungeon = "swamp:mud_brick",
  node_dungeon_alt = "swamp:mud_block",
  node_dungeon_stair = nil,

  -- climate
  heat_point = 80,
  humidity_point = 98,

  -- y values
  y_min = -255,
  y_max = -1,
  vertical_blend = 1,
}