return function(biome,metadata)
  if metadata.groups.surface and biome.name and biome.name:lower():find("mesa") then
    metadata.groups.mesa = true
  end
end