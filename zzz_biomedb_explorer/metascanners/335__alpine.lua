return function(biome,metadata)
  if metadata.groups.surface and biome.name then
    local lname = biome.name:lower()
    if lname:find("taiga") or lname:find("coniferous") or lname:find("alpine") then
      metadata.groups.alpine = true
    end
  end
end