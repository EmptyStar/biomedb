# BiomeDB API Documentation

This file is a technical reference to all of the BiomeDB functions.

## `biomedb.select`

The `biomedb.select` function is the primary function used to query the BiomeDB database for a set of biomes based on any criteria that you specify. This function takes a function as an argument which itself takes a [biome definition](https://github.com/minetest/minetest/blob/master/doc/lua_api.md#biome-definition) + metadata as its argument:

```lua
local biomes = biomedb.select(function(biome)
  return biome.heat_point >= 75
end)
```

The passed function should return `true` or a "truthy" value if you want to include the biome in the result set, or `false` or a "falsy" value if you wish to exlude the biome from the result set.

The returned value is a set of biomes that has aggregator functions for each property of the biome definition (described in the [Biome Sets section](#biome-sets)).

## Biome Sets

A biome set returned from a call to `biomedb.select` represents the set of biomes that were selected based on your criteria. Biome sets have a number of their own functions.

### `biomeset:foreach`

The `foreach` function is used to loop over all of the biome definitions in the biome set:

```lua
biomes:foreach(function(biome)
  minetest.log("Biome " .. biome.name .. " is selected.")
end)
```

The function passed into `foreach` is called once for each biome in the set, and it is passed the biome definition as its argument.

### `biomeset:count`

The `count` function returns the number of biomes in the set:

```lua
minetest.log("There are " .. biomes:count() .. " biomes selected.")
```

Note that multiple versions of the same biome are possible depending on how many games/mods define biomes with identical names or other criteria, so the count may not match what you might expect in some cases.

### Aggregator functions

It is often the case in Minetest mapgen code that lists of biome names or nodes are required, such as for `minetest.register_decoration`. Biome sets provide "aggregator functions" for each string-based or table-based property of a Minetest biome definition that will return a list of values for the given property:

```lua
minetest.register_decoration({
  decoration = "example:grass",
  fill_ratio = 0.075,
  place_on = biomes:node_top(),
  biomes = biomes:name(),
})
```

Here, `biomes:node_top()` returns a list of `node_top` properties of all biomes in the `biomes` set. Likewise, `biomes:name()` returns a list of `name` properties of all biomes in the `biomes` set. Such functions exist for all string-based and/or table-based Minetest biome definition properties and all metadata properties (explained in [the Metadata section](#metadata)).

## Metadata

BiomeDB adds some metadata to biome definitions which gives mod authors a wider range of information to query. The metadata properties that BiomeDB provides are listed below.

### `mod`

The `mod` property is a string that is the technical name of the mod that defines the biome. Note that it's possible for multiple mods to define a biome of the same name, such as the `grassland` biome being defined by both `default` (Minetest Game) and `ethereal` (Ethereal NG). This property can be used to select biomes based on their defining mod.

### `game`

The `game` property is the technical name of the game that the biome is defined for, such as `game = "minetest_game"` for the `grassland` biome that is defined in Minetest Game's `default` mod. Biomes that are not specific to any game (those defined in separate mods such as Ethereal or Everness) will have `game = nil`, even if the mods those biomes are defined in depend on a specific game.

### `groups`

BiomeDB assigns groups to biomes which function as tags that describe each biome in some way. Known groups and their meanings are listed below.

- **Surface**
  - `grassy`: features grass cover on the surface
  - `sandy`: features sand on the surface
  - `rocky`: features exposed stone on the surface
  - `snowy`: has snow on the ground
  - `loamy`: is covered primarily in dirt and/or natural foliage litter
  - `ocean`: represents an ocean biome

- **Theme**
  - `plains`: features a lot of open plains
  - `forest`: features a kind of forest whether of trees or any other type of structure (e.g., Coral Forest from Everness)
  - `jungle`: features lush, overgrown jungle terrain
  - `swamp`: a biome that represents a swamp, usually wet and overgrown
  - `savanna`: a biome that represents a savanna, usually grassy and dry with sparse trees
  - `tundra`: a biome that represents a tundra, usually snowy and rocky terrain
  - `desert`: is a type of desert or is associated with deserts
  - `alpine`: cold biomes featuring pine trees
  - `fiery`: features significant amounts of fire and/or lava
  - `icy`: features significant amounts of ice
  - `spooky`: has spooky or evil themes
  - `beach`: represents a sandy, beach-themed biome
  - `fungal`: features mushrooms or other fungal growth as a primary theme
  - `flowery`: features dense flower growth as a primary theme
  - `bamboo`: features bamboo as a primary theme
  - `arctic`: a frozen, icy landscape such as those found at Earth's polar ice caps
  - `ruins`: features structures that represent ruins

- **Climate**
  - `cold`: has a cold climate (e.g., alpine or arctic biomes)
  - `hot`: has a warm climate (e.g., lava fields or hot deserts)
  - `temperate`: has a mild, moderate temperature
  - `dry`: has a dry climate (e.g., deserts or savannas)
  - `humid`: has a humid climate (e.g., swamps or jungles)

- **Location**
  - `surface`: exists on the world surface
  - `underground`: exists below the world surface
  - `shore`: represents a shoreline biome
  - `underwater`: exists in the ocean or as part of the ocean
  - `skyward`: exists in the sky far above the world surface
  - `otherworldly`: exists in an alternate dimension or in a space of its own

### `base`

Many biomes are directly related to a "base" biome, such as `desert_under` in Minetest Game being the underground biome for the `desert` biome. In this example, `desert` is the base biome.

Biomes that belong to a base biome have a `base` property set to the name of the base biome, such as `base = "desert"` for `desert_under`. Biomes that are themselves base biomes which don't "belong" to another biome have `base = nil` set for their `base` property.

### `is_loaded`

A boolean value that is `true` if the biome is loaded (i.e., its defining mod is loaded and the biome exists in `minetest.registered_biomes`) and `false` otherwise. This can be useful to select only those biomes that are active in the current Minetest environment.

### `annotate`

A biome definition's `annotate` function is used to define your own metadata properties for the given biome. This function takes two arguments: a property name and a value, like so:

```lua
biomedb.select(function(biome)
  local g = biome.groups
  if g.forest then biome:annotate("flowers","yellow") end
  if g.jungle then biome:annotate("flowers","blue") end
end)
```

Which then allows you to reference that property as a biome set aggregate function:

```lua
local biomes = biomedb.select(function(biome)
  return biome.groups.grassy
end)
minetest.log("flower colors in grassy biomes: " .. table.concat(biomes:flowers(),", ")) -- returns "blue, yellow"
```