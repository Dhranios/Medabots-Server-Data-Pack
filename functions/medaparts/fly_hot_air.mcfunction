execute if block ~ ~-1 ~ minecraft:lava run scoreboard players set @s Fly 3
execute if block ~ ~-1 ~ minecraft:lava run tag @s add hot_air
execute if block ~ ~-1 ~ minecraft:fire run scoreboard players set @s Fly 3
execute if block ~ ~-1 ~ minecraft:fire run tag @s add hot_air
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-1 ~ run function medabots_server:medaparts/fly_hot_air