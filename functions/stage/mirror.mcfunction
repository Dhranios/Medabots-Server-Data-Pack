# Needs a score
execute unless entity @s[scores={Time=0..}] run scoreboard players set @s Time 0

# Change the rotation
scoreboard players remove @s[scores={Time=1..}] Time 1
execute if entity @s[scores={Time=0}] run function medabots_server:stage/mirror_hit
execute if entity @s[scores={Time=10}] run function medabots_server:stage/mirror_rotate

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @s[tag=dead]