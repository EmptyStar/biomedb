return function(biome,metadata)
  if not metadata.groups.grassy and biome.node_top then
    local ln = biome.node_top:lower()
    if ln:find("clay")
    or ln:find("silt")
    or ln:find("soil")
    or (ln:find("dirt") and not ln:find("ethereal:"))
    then
      metadata.groups.loamy = true
    end
  end
end