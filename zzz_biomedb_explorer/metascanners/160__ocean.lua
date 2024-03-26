local oceans = {
  "ocean",
  "seabed",
  "_below",
  "underwater",
  "_sea"
}

return function(biome,metadata)
  if biome.name then
    local lname = biome.name:lower()
    for i = 1, #oceans do
      if lname:find(oceans[i]) and not lname:find("buffer") then
        metadata.groups.ocean = true
        break
      end
    end
  end
end