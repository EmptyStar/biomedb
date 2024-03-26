return function(biome,metadata)
  if biome.name then
    local lname = biome.name:lower()
    if lname:find("frozen") or lname:find("^ice") or lname:find("icesheet") then
      metadata.groups.icy = true
      return
    end
  end

  if biome.node_stone then
    local ls = biome.node_stone:lower()
    if ls:find("ice$") then
      metadata.groups.icy = true
      return
    end
  end

  if biome.node_filler then
    local lf = biome.node_filler:lower()
    if lf:find("ice$") then
      metadata.groups.icy = true
      return
    end
  end
end