return function(biome,metadata)
  if not biome.name then
    minetest.log("BIOMEDB EXPLORER ALERT: Biome without name from mod " .. metadata.mod .. "!!!")
  end
end