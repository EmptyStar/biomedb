return function(biome,metadata)
  if not metadata.groups.hot
  and not metadata.groups.cold
  and not metadata.groups.dry
  and not metadata.groups.humid
  then
    metadata.groups.temperate = true
  end
end