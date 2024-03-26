return function(biome,metadata)
  if metadata.groups.jungle then
    return
  end

  if biome.name then
    local lname = biome.name:lower()
    if (metadata.groups.surface or metadata.mod == "new_biomes")
    and (lname:find("forest")
      or lname:find("taiga")
      or lname:find("alpine")
      or lname:find("redwood")
      or lname == "grassytwo"
      or lname == "grayness"
      or lname == "dorwinion"
      or lname == "cherrygrove"
      or (metadata.mod == "cherry" and lname == "cherry")
      or (metadata.game == "asuna" and lname == "prairie")
    ) or (
      biome.node_top and biome.node_top:find("nylium")
    )
    then
      metadata.groups.forest = true
    end
  end
end