execute positioned ~1 ~ ~ if entity @e[distance=..0.7,tag=wall,tag=!z,tag=!dead,tag=nothing_replaced,tag=!stage_builder] run function medabots_server:blocks/wall/extend/x
execute if entity @s[tag=!x] positioned ~ ~ ~1 if entity @e[distance=..0.7,tag=wall,tag=!x,tag=!dead,tag=nothing_replaced,tag=!stage_builder] run function medabots_server:blocks/wall/extend/z
tag @s add extended