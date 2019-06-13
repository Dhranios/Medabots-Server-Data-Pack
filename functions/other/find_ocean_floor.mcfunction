execute unless block ~ ~-1 ~ minecraft:sand if block ~ ~-1 ~ minecraft:water positioned ~ ~-1 ~ run function medabots_server:other/find_ocean_floor
execute if block ~ ~-1 ~ minecraft:sand run scoreboard players set @s Music 0
execute if block ~ ~-1 ~ minecraft:sand run scoreboard players set @s MusicType 3