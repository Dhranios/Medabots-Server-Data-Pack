execute if block ~ ~-1 ~ minecraft:lava run tag @s add hot_air
execute if block ~ ~-1 ~ minecraft:fire run tag @s add hot_air
scoreboard players set @s[tag=hot_air] Fly 3
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-1 ~ run function medabots_server:items/medapart/fly/hot_air