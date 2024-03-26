return function(biome,metadata)
  if biome.name then
    local lname = biome.name:lower()
    if lname == "fiery" or lname:find("nether") then
      metadata.groups.fiery = true
      return
    end
  end

  if biome.node_top then
    local ln = biome.node_top:lower()
    if ln:find(":lava") then
      metadata.groups.fiery = true
      return
    end
  end
end