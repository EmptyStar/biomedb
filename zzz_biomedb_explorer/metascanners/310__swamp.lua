return function(biome,metadata)
  if (not metadata.groups.ocean and not metadata.groups.underground) and biome.name then
    local lname = biome.name:lower()
    if lname:find("swamp")
    or lname:find("mangrove")
    or lname:find("marsh")
    or lname:find("bog")
    or lname == "swaz" then
      metadata.groups.swamp = true
    end
  end
end