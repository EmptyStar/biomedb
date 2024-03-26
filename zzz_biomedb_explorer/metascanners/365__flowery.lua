return function(biome,metadata)
  if metadata.groups.surface and biome.name then
    if biome.name:find("^Flower")
    or biome.name:find("^Sunflower")
    or (metadata.game == "asuna" and (biome.name == "prairie" or biome.name == "plains"))
    or metadata.mod == "prairie"
    then
      metadata.groups.flowery = true
    end
  end
end