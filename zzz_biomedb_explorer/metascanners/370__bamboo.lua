return function(biome,metadata)
  if metadata.groups.surface and biome.name then
    local lname = biome.name:lower()
    if lname:find("bamboo") or (metadata.game == "asuna" and lname:find("sakura")) then
      metadata.groups.bamboo = true
    end
  end
end