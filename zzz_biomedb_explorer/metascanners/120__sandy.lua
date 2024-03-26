return function(biome,metadata)
  if biome.node_top then
    local ln = biome.node_top:lower()
    if ln:find("sand") then
      metadata.groups.sandy = true
    end
  end
end