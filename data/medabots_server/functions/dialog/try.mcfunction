execute if entity @s[scores={Dialog=0}] unless block ~ ~ ~ minecraft:air{loaded:0b} unless block ~-16 ~ ~ minecraft:air{loaded:0b} unless block ~16 ~ ~ minecraft:air{loaded:0b} unless block ~ ~ ~-16 minecraft:air{loaded:0b} unless block ~ ~ ~16 minecraft:air{loaded:0b} unless block ~16 ~ ~16 minecraft:air{loaded:0b} unless block ~16 ~ ~-16 minecraft:air{loaded:0b} unless block ~-16 ~ ~16 minecraft:air{loaded:0b} unless block ~-16 ~ ~-16 minecraft:air{loaded:0b} run function medabots_server:dialog/main
execute if entity @s[scores={Dialog=1..}] run function medabots_server:dialog/play

scoreboard players set @s[tag=!loaded_chunk_triggered] LoadedChunks 0
tag @s remove loaded_chunk_triggered
