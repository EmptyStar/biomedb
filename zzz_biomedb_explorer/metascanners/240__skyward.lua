return function(biome,metadata)
  if biome.y_min and biome.y_min > 200 then
    metadata.groups.skyward = true
  end
end