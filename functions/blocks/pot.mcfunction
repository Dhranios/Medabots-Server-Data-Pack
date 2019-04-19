# Remove if pot is broken
execute unless block ~ ~ ~ minecraft:chest run tag @s add broken

# Drop contents if the pot gets broken
execute if entity @s[tag=broken] if block ~ ~ ~ minecraft:chest run function medabots_server:blocks/pot/broken
execute if entity @s[tag=broken] unless block ~ ~ ~ minecraft:chest run function medabots_server:blocks/pot/spawn_entity

# Remove when cleaning up a stage
execute if entity @s[tag=broken] run tag @s add dead
execute if entity @s[tag=dead] run setblock ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] run setblock ~ ~ ~ minecraft:air
kill @s[tag=dead]