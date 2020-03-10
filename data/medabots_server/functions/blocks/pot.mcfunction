# Pot moving on raft
teleport @s[scores={Moving=1}] ~1 ~ ~
teleport @s[scores={Moving=2}] ~ ~ ~1
teleport @s[scores={Moving=3}] ~-1 ~ ~
teleport @s[scores={Moving=4}] ~ ~ ~-1
execute at @s[scores={Moving=1}] run clone ~-1 ~1 ~ ~-1 ~ ~ ~ ~ ~ replace move
execute at @s[scores={Moving=2}] run clone ~ ~1 ~-1 ~ ~ ~-1 ~ ~ ~ replace move
execute at @s[scores={Moving=3}] run clone ~1 ~1 ~ ~1 ~ ~ ~ ~ ~ replace move
execute at @s[scores={Moving=4}] run clone ~ ~1 ~1 ~ ~ ~1 ~ ~ ~ replace move
scoreboard players reset @s Moving

# Remove if pot is broken
execute at @s unless block ~ ~ ~ minecraft:black_stained_glass unless block ~ ~ ~ minecraft:chest run tag @s add broken

# Drop contents if the pot gets broken
execute if entity @s[tag=broken] at @s if block ~ ~ ~ minecraft:chest run function medabots_server:blocks/pot/broken
execute if entity @s[tag=broken] at @s unless block ~ ~ ~ minecraft:chest run function medabots_server:blocks/pot/spawn_entity

# Remove when cleaning up a stage
execute if entity @s[tag=broken] run tag @s add dead
execute if entity @s[tag=dead] at @s run setblock ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] at @s unless entity @e[distance=..0.7,tag=!dead,tag=pot] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:chest