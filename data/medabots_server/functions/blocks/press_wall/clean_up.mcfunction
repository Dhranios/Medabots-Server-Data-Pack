tag @e[tag=this_press_wall,type=minecraft:armor_stand] add dead
execute unless entity @e[type=minecraft:armor_stand,tag=this_press_wall,distance=..0.7] as @e[tag=this_press_wall,type=minecraft:armor_stand] run function medabots_server:blocks/press_wall/retract_instantly
execute as @e[tag=this_press_wall,type=minecraft:armor_stand] run kill @s
fill ~ ~ ~ ~ ~3 ~ minecraft:air