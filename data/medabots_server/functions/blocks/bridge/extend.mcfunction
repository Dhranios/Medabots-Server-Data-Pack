execute if entity @s[tag=water] positioned ~1 ~ ~ if entity @e[distance=..0.7,tag=bridge,tag=!z,tag=!dead,tag=water,tag=!stage_builder] run function medabots_server:blocks/bridge/extend/water/x
execute if entity @s[tag=air] positioned ~1 ~ ~ if entity @e[distance=..0.7,tag=bridge,tag=!z,tag=!dead,tag=air,tag=!stage_builder] run function medabots_server:blocks/bridge/extend/air/x
execute if entity @s[tag=water,tag=!x] positioned ~ ~ ~1 if entity @e[distance=..0.7,tag=bridge,tag=!x,tag=!dead,tag=water,tag=!stage_builder] run function medabots_server:blocks/bridge/extend/water/z
execute if entity @s[tag=air,tag=!x] positioned ~ ~ ~1 if entity @e[distance=..0.7,tag=bridge,tag=!x,tag=!dead,tag=air,tag=!stage_builder] run function medabots_server:blocks/bridge/extend/air/z
tag @s add extended