execute positioned ~1 ~ ~ if entity @e[distance=..0.7,tag=glass,tag=!z,tag=!dead,tag=nothing_replaced,tag=!stage_builder] run function medabots_server:blocks/glass/extend/x
execute if entity @s[tag=!x] positioned ~ ~ ~1 if entity @e[distance=..0.7,tag=glass,tag=!x,tag=!dead,tag=nothing_replaced,tag=!stage_builder] run function medabots_server:blocks/glass/extend/z
tag @s add extended