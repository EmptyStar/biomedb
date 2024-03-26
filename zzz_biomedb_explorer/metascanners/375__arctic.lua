return function(biome,metadata)
  if (metadata.groups.surface or metadata.mod == "new_biomes") and biome.name then
    local lname = biome.name:lower()
    if lname:find("glacier") or lname:find("icesheet") then
      metadata.groups.arctic = true
    end
  end
end