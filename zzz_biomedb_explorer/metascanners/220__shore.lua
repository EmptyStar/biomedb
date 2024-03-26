return function(biome,metadata)
  if biome.y_min and biome.y_max then
    if (biome.name and (
      biome.name:find("_shore")
      or biome.name:find("_beach")
    )) or (biome.y_min > 0
      and biome.y_min < 4
      and biome.y_max < 8
    )
    then
      metadata.groups.shore = true
    end
  end
end