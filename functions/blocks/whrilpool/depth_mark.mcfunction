scoreboard players add @s Time 1
execute unless block ~ ~-1 ~ minecraft:water run function medabots_server:blocks/whrilpool/tag
execute if block ~ ~-1 ~ minecraft:water positioned ~ ~-1 ~ run function medabots_server:blocks/whrilpool/depth_mark