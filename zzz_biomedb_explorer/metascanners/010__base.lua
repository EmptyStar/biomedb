local current_mod = nil
local q = {}

return function(biome,metadata)
  if current_mod ~= metadata.mod then
    current_mod = metadata.mod
    q = {}
  end

  -- Search existing biomes for matches
  if biome.name then
    local is_base = true
    for qbiome,qmetadata in pairs(q) do
      if qbiome:find("^" .. biome.name .. "_") then
        qmetadata.base = biome.name
        q[qbiome] = nil
        qmetadata:write_to_file()
      end

      if biome.name:find("^" .. qbiome .. "_") then
        is_base = false
        metadata.base = qbiome
        break
      end
    end

    if is_base then
      q[biome.name] = metadata
    end
  end
end