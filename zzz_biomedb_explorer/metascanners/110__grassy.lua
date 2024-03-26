return function(biome,metadata)
  if not metadata.groups.snowy and biome.node_top then
    local ln = biome.node_top:lower()
    if ln:find("grass")
    or (ln:find("litter") and ln:find("naturalbiomes:"))
    or (ln:find("dirt") and ln:find("ethereal:"))
    then
      metadata.groups.grassy = true
    end
  end
end