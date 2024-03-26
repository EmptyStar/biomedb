return function(biome,metadata)
  if (biome.name and biome.name:find("^End")) or (biome.node_filler and biome.node_filler:lower():find("nether")) then
    metadata.groups.otherworldly = true
  end
end