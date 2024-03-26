return function(biome,metadata)
  if (metadata.groups.surface or metadata.mod == "new_biomes") and biome.name then
    local lname = biome.name:lower()
    if lname:find("tundra") then
      metadata.groups.tundra = true
    end
  end
end