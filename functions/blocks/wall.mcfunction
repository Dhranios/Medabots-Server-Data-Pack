# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~3 ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
execute if entity @s[tag=dead,tag=shallow_water] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:water
execute if entity @s[tag=dead,tag=deep_water] run fill ~ ~-2 ~ ~ ~-2 ~ minecraft:water
execute if entity @s[tag=dead,tag=crater] run fill ~ 0 ~ ~ ~-1 ~ minecraft:air replace minecraft:bedrock
kill @s[tag=dead]
