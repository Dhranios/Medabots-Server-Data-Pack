execute if entity @s[scores={MusicType=1..2}] if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run function medabots_server:other/find_ocean_floor
execute if entity @s[scores={MusicType=1}] unless block ~ ~ ~ minecraft:water if block ~ ~-0.8 ~ minecraft:sand if block ~ ~-1.8 ~ minecraft:sand run scoreboard players set @s Music 0
execute if entity @s[scores={MusicType=1}] unless block ~ ~ ~ minecraft:water if block ~ ~-0.8 ~ minecraft:sand if block ~ ~-1.8 ~ minecraft:sand run scoreboard players set @s MusicType 2
execute if entity @s[scores={MusicType=3}] unless block ~ ~ ~ minecraft:water unless block ~ ~-1 ~ minecraft:water run scoreboard players set @s Music 0
execute if entity @s[scores={MusicType=3}] unless block ~ ~ ~ minecraft:water unless block ~ ~-1 ~ minecraft:water run scoreboard players set @s MusicType 2

execute if entity @s[scores={MusicType=2}] if block ~ ~-0.8 ~ minecraft:grass_block run scoreboard players set @s Music 0
execute if entity @s[scores={MusicType=2}] if block ~ ~-0.8 ~ minecraft:grass_block run scoreboard players set @s MusicType 1
execute if entity @s[scores={MusicType=2}] if block ~ ~-0.8 ~ minecraft:grass_path run scoreboard players set @s Music 0
execute if entity @s[scores={MusicType=2}] if block ~ ~-0.8 ~ minecraft:grass_path run scoreboard players set @s MusicType 1
execute if entity @s[scores={MusicType=2}] if block ~ ~-0.8 ~ minecraft:polished_andesite run scoreboard players set @s Music 0
execute if entity @s[scores={MusicType=2}] if block ~ ~-0.8 ~ minecraft:polished_andesite run scoreboard players set @s MusicType 1
execute if entity @s[scores={MusicType=2}] if block ~ ~-1.8 ~ minecraft:polished_andesite run scoreboard players set @s Music 0
execute if entity @s[scores={MusicType=2}] if block ~ ~-1.8 ~ minecraft:polished_andesite run scoreboard players set @s MusicType 1