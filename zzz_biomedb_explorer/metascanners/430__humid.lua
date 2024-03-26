return function(biome,metadata)
  if metadata.groups.dry then
    return
  end

  if metadata.groups.swamp or metadata.groups.fungal or metadata.groups.jungle then
    metadata.groups.humid = true
    return
  end

  if biome.humidity_point and biome.humidity_point >= 75 then
    metadata.groups.humid = true
    return
  end

  if biome.name then
    local lname = biome.name:lower()
    if lname:find("rainforest") or lname:find("humid_") then
      metadata.groups.humid = true
      return
    end
  end
end