return function(biome,metadata)
  if biome.y_min and biome.y_max then
    if (biome.y_max <= 0 and biome.y_min <= -100)
    then
      metadata.groups.underground = true
      return
    end
  end

  if biome.name then
    if biome.name:find("_under")
    or biome.name:find("_below")
    or biome.name:lower():find("underground")
    or (metadata.game == "nodecore" and biome.name == "deep")
    then
      metadata.groups.underground = true
      return
    end
  end
end