tag @e[tag=this_press_wall,type=minecraft:armor_stand] add dead
execute unless entity @e[type=minecraft:armor_stand,tag=this_press_wall,distance=..0.7] as @e[tag=this_press_wall,type=minecraft:armor_stand] run function medabots_server:blocks/press_wall/retract_instantly
scoreboard players operation #temp PressNr = @s PressNr
execute as @e[tag=this_press_wall,type=minecraft:armor_stand] run kill @s
execute as @e[scores={PressNr=1..}] if score @s PressNr > #temp PressNr run scoreboard players remove @s PressNr 1
scoreboard players reset #temp PressNr
fill ~ ~ ~ ~ ~3 ~ minecraft:air