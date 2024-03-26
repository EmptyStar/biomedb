return function(biome,metadata)
  if metadata.groups.surface and biome.name and biome.name:lower():find("savanna") then
    metadata.groups.savanna = true
  end
end