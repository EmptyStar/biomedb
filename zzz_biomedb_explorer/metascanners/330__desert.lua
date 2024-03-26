return function(biome,metadata)
  if (metadata.groups.surface or metadata.mod == "new_biomes") and biome.name then
    local lname = biome.name:lower()
    if lname:find("desert") or lname:find("sandstone") or lname == "saltd" then
      metadata.groups.desert = true
    end
  end
end