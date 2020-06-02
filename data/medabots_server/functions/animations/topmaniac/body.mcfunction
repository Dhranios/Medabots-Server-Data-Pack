# Move with
teleport @s ~ ~-1.43 ~ ~ 0

execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=2}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 20
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=3}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 21
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=4}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 22
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=1}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 23

execute if entity @s[tag=roll_start] run function medabots_server:animations/topmaniac/roll_start/body
execute if entity @s[tag=roll] run function medabots_server:animations/topmaniac/roll/body
execute if entity @s[tag=roll_stop] run function medabots_server:animations/topmaniac/roll_stop/body
