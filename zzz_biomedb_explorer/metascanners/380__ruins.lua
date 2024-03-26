return function(biome,metadata)
  if biome.name then
    local lname = biome.name:lower()
    if lname:find("dorwinion") or (metadata.groups.surface and lname:find("cursed_lands")) then
      metadata.groups.ruins = true
    end
  end
end