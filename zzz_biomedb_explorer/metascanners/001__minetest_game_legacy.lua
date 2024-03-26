return function(biome,metadata)
  if metadata.game == "minetest" then
    metadata.game = "minetest_game"
  end

  if metadata.game == "minetest_game" and metadata.mod ~= "default" then
    metadata.game = nil
  end
end