return function(biome,metadata)
  if biome.y_min and biome.y_max then
    if biome.y_min >= 0
    and biome.y_min < 200
    and biome.y_max >= 8
    then
      metadata.groups.surface = true
    end
  end
end