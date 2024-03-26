return function(biome,metadata)
  if (metadata.groups.surface or metadata.mod == "new_biomes") and biome.name then
    local lname = biome.name:lower()
    if lname:find("plains")
    or lname:find("grassland")
    or lname:find("steppe")
    then
      metadata.groups.plains = true
    end
  end
end