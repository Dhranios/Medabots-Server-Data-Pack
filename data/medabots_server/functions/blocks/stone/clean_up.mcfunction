setblock ~ ~ ~ minecraft:air
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
scoreboard players remove @s WallLength 1
execute if entity @s[tag=x,scores={WallLength=1..}] positioned ~1 ~ ~ run function medabots_server:blocks/stone/clean_up
execute if entity @s[tag=z,scores={WallLength=1..}] positioned ~ ~ ~1 run function medabots_server:blocks/stone/clean_up