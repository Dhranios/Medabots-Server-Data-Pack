# Prevent the blocks from disappearing (due to random ticking)
execute if entity @s[tag=!dead] run fill ~ ~-2 ~ ~ ~-1 ~ minecraft:ice

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run setblock ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-2 ~ ~ ~-1 ~ minecraft:water
kill @s[tag=dead]