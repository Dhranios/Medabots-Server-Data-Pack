scoreboard players operation @s WallLength += @e[distance=..0.7,tag=stone,tag=!x,tag=!dead,tag=!stage_builder] WallLength
tag @e[distance=..0.7,tag=stone,tag=!x,tag=!dead,tag=!stage_builder] add consumed
tag @e[distance=..0.7,tag=stone,tag=!x,tag=!dead,tag=!stage_builder] add dead
execute positioned ~ ~ ~1 if entity @e[distance=..0.7,tag=stone,tag=!x,tag=!dead,tag=nothing_replaced,tag=!stage_builder] run function medabots_server:blocks/stone/extend/z
tag @s add z
