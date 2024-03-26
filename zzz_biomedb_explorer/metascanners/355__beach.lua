return function(biome,metadata)
  if metadata.groups.shore and metadata.groups.sandy and biome.name then
    local lname = biome.name:lower()
    if lname:find("beach") then
      metadata.groups.beach = true
    end
  end
end