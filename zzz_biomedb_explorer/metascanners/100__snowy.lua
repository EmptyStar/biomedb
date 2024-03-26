return function(biome,metadata)
  if biome.node_dust then
    local ldust = biome.node_dust:lower()
    if ldust:find("snow") then
      metadata.groups.snowy = true
      return
    end
  end

  if biome.node_top then
    local ltop = biome.node_top:lower()
    if ltop:find("snow") then
      metadata.groups.snowy = true
      return
    end
  end
end