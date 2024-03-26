return function(biome,metadata)
  if metadata.groups.grassy or metadata.groups.sandy or metadata.groups.loamy then
    return
  end

  if biome.node_top then
    local ln = biome.node_top:lower()
    if ln:find("stone") or ln:find("permafrost") or ln:find("gravel") then
      metadata.groups.rocky = true
      return
    end
  end

  if not biome.node_top
  and not biome.node_filler
  and (not biome.node_stone
  or biome.node_stone:find("stone")
  or biome.node_stone:find("deepslate")
  ) then
    metadata.groups.rocky = true
    return
  end
end