return function(biome,metadata)
  if metadata.groups.swamp
  or metadata.groups.fungal
  or metadata.groups.jungle
  or metadata.groups.ocean
  then
    return
  end

  if biome.name then
    local lname = biome.name:lower()

    if lname:find("wetsavanna") 
    or lname:find("humid_")
    or lname:find("_humid")
    then
      return
    end

    if lname:find("outback")
    or lname:find("nether")
    or lname:find("basalt")
    or lname:find("dry_")
    or lname:find("_dry")
    then
      metadata.groups.dry = true
      return
    end
  end

  if biome.node_top then
    local ln = biome.node_top:lower()
    if ln:find("dry_dirt") or ln:find("savanna") then
      metadata.groups.dry = true
      return
    end
  end

  if metadata.groups.fiery
  or metadata.groups.desert
  or metadata.groups.savanna
  or metadata.groups.mesa
  then
    metadata.groups.dry = true
    return
  end

  if biome.humidity_point and biome.humidity_point <= 15 then
    metadata.groups.dry = true
    return
  end
end