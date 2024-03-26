return function(biome,metadata)
  if metadata.groups.surface and biome.name then
    local lname = biome.name:lower()
    if lname:find("jungle") or lname:find("rainforest") then
      metadata.groups.jungle = true
    end
  end
end