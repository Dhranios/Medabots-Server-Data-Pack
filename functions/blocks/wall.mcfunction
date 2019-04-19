# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~3 ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
kill @s[tag=dead]
