execute positioned ~1 ~ ~ if entity @e[distance=..0.7,tag=stone,tag=!z,tag=!dead,tag=!stage_builder] run function medabots_server:blocks/stone/extend/x
execute if entity @s[tag=!x] positioned ~ ~ ~1 if entity @e[distance=..0.7,tag=stone,tag=!x,tag=!dead,tag=!stage_builder] run function medabots_server:blocks/stone/extend/z
tag @s add extended