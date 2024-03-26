return function(biome,metadata)
  if biome.name then
    local lname = biome.name:lower()

    if lname:find("hot_")
    or lname:find("_hot")
    or lname:find("_warm")
    or lname:find("warm_")
    then
      return
    end

    if lname:find("cold") or lname:find("icesheet") or lname:find("frozen") or lname:find("frost") then
      metadata.groups.cold = true
      return
    end
  end

  if metadata.groups.snowy or metadata.groups.icy then
    metadata.groups.cold = true
    return
  end

  if biome.heat_point and biome.heat_point <= 15 then
    metadata.groups.cold = true
    return
  end
end