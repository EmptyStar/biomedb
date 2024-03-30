BiomeDB
=======

BiomeDB is a powerful biome selection tool for Minetest mods and games. It is intended for use by other mods that need to reference known/popular biomes. BiomeDB only provides biome data to other mods and does not affect gameplay or mapgen.

Common use cases for BiomeDB include:

- Mods that add biome decorations such as flowers or mushrooms that need to determine in which biomes to place decorations
- Mods that add mobs/NPCs which should spawn in specific biomes or climates
- Mods that add new ores or stones which should only generate in certain biomes or climates

With BiomeDB, you can selectively query 1000+ biomes from popular mods and games without having to support each mod or game individually. You will also gain automatic future support for new biomes as they are added to BiomeDB.

Note that BiomeDB's biome data is externally observed and collected from the mods it supports and isn't extracted from mods that are actually loaded. BiomeDB only documents and annotates biomes from popular mods. To analyze biomes that are actually loaded, refer to `minetest.registered_biomes` or the [`is_loaded` biome metadata property](https://github.com/EmptyStar/biomedb/blob/main/API.md#is_loaded). Biomes from mods that aren't known to BiomeDB cannot be queried via BiomeDB.

Also note that BiomeDB does not document games/mods that implement biomes without the use of `minetest.registered_biomes`, such as Lord of the Test, Caverealms, and Dwarf Fortress Style Caverns. Excluded mods are mostly older mods that were created before the advent of engine-supported biomes.

How To Install
--------------

To use BiomeDB, install it to your mods directory and add `depends = biomedb` into your own mod's mod.conf file. BiomeDB itself has optional dependencies on all of the biome mods that it supports, so mods that depend on BiomeDB will not need to depend on individual biome mods (although it's harmless if they do).

Note that BiomeDB should not be used by mods that *define* biomes as this can cause a circular dependency with BiomeDB. BiomeDB should only be used by mods which need to look up biome data for purposes other than biome registration.

In short:

- If your mod needs to look up biome data, then **use BiomeDB** with `depends = biomedb` in your mod.conf file
- If your mod defines biomes via `minetest.register_biome`, then **DO NOT use BiomeDB**
- If your mod both needs to look up biome data and also registers biomes, then it is advised to split those functions into separate mods that follow the above rules

How To Use
----------

BiomeDB is primarily used by invoking `biomedb.select(fn)`. The select function takes a function argument that accepts a biome definition with additional metadata as its single argument and returns `true` to select a biome and `false` to reject it. The select function then returns an object that allows you to extract useful information from the set of selected biomes.

For example, if you want to select all forest biomes with temperatures at or above 50:

```lua
local biomes = biomedb.select(function(biome)
  return biome.groups.forest and biome.heat_point >= 50
end)
```

In the above example, the `biomes` variable would be a set of all biomes that were selected. If you then want to get a list of names and surface nodes of these biomes for use in a biome decoration:

```lua
minetest.register_decoration({
  decoration = "example:grass",
  fill_ratio = 0.075,
  place_on = biomes:node_top(),
  biomes = biomes:name(),
})
```

Here, `biomes:node_top()` returns a list of `node_top` properties of all biomes in the `biomes` set. Likewise, `biomes:name()` returns a list of `name` properties of all biomes in the `biomes` set. Such functions exist for all string-based and/or table-based Minetest biome definition properties and all metadata properties.

See [API.md](https://github.com/EmptyStar/biomedb/blob/main/API.md) for more in-depth technical information about how to use these functions and features.

Supported Biome Mods/Games
--------------------------

BiomeDB currently documents more than 1000 biomes between 10+ games and 20+ mods. Popular games include Minetest Game, Mineclone, Mineclonia, NodeCore, MeseCraft, Asuna, Exile, and other survival and/or sandbox games. Popular mods include Ethereal, Everness, Wilhelmines mods, Variety, and more.