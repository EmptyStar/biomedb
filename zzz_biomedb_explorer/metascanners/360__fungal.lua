return function(biome,metadata)
  if biome.name then
    local lname = biome.name:lower()
    if metadata.groups.surface and (lname:find("mushroom") or lname:find("fungi") or lname:find("fungal")) then
      metadata.groups.fungal = true
      return
    end
  end

  if biome.node_top then
    local ln = biome.node_top:lower()
    if ln:find("mushroom")
    or ln:find("mycelium")
    or ln:find("lichen")
    or ln:find("nylium")
    or ln:find("algae")
    then
      metadata.groups.fungal = true
      return
    end
  end
end