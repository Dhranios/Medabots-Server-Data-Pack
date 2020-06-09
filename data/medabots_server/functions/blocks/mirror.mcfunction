# Needs a score
execute unless entity @s[scores={Time=0..}] run scoreboard players set @s Time 0

# Change the rotation
scoreboard players remove @s[scores={Time=1..}] Time 1
execute if entity @s[scores={Time=0}] run function medabots_server:blocks/mirror/hit
execute if entity @s[scores={Time=10}] run function medabots_server:blocks/mirror/rotate

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt