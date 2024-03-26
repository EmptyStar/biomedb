return {
  -- metadata
  name = "swamp",

  -- nodes
  node_dust = nil,
  node_top = "swamp:dirt_with_swamp_grass",
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
  node_river_water = nil,
  node_cave_liquid = nil,

  -- dungeons
  node_dungeon = "swamp:mud_brick",
  node_dungeon_alt = "swamp:mud_block",
  node_dungeon_stair = nil,

  -- climate
  heat_point = 80,
  humidity_point = 98,

  -- y values
  y_min = -20,
  y_max = 10,
  vertical_blend = nil,
}