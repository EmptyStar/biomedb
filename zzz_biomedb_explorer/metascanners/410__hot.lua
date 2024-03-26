return function(biome,metadata)
  if metadata.groups.cold then
    return
  end

  if biome.name then
    local lname = biome.name:lower()
    if lname:find("outback") then
      metadata.groups.hot = true
      return
    end
  end

  if biome.node_filler then
    local lf = biome.node_filler:lower()
    if lf:find("nether") then
      metadata.groups.hot = true
      return
    end
  end

  if metadata.groups.fiery or (metadata.groups.desert and biome.heat_point > 40) or metadata.groups.savanna then
    metadata.groups.hot = true
    return
  end

  if biome.heat_point and biome.heat_point >= 85 then
    metadata.groups.hot = true
    return
  end
end