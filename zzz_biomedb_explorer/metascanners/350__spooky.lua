return function(biome,metadata)
  if biome.name then
    local lname = biome.name:lower()
    if lname:find("cursed_lands")
    or lname:find("^soulsand")
    or (biome.node_top and biome.node_top:find("^badland"))
    then
      metadata.groups.spooky = true
    end
  end
end