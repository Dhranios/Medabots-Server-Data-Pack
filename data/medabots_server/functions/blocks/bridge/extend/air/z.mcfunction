scoreboard players operation @s WallLength += @e[distance=..0.7,tag=bridge,tag=!x,tag=!dead,tag=air,tag=!stage_builder] WallLength
tag @e[distance=..0.7,tag=bridge,tag=!x,tag=!dead,tag=air,tag=!stage_builder] add consumed
tag @e[distance=..0.7,tag=bridge,tag=!x,tag=!dead,tag=air,tag=!stage_builder] add dead
execute positioned ~ ~ ~1 if entity @e[distance=..0.7,tag=bridge,tag=!x,tag=!dead,tag=air,tag=!stage_builder] run function medabots_server:blocks/bridge/extend/air/z
tag @s add z
