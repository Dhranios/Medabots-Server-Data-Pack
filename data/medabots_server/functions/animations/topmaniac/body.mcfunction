# Move with
execute at @e[type=minecraft:spider,tag=this_topmaniac,limit=1] rotated ~ 0 run teleport @s ~ ~-1.43 ~ ~ ~

execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=2}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 20
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=3}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 21
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=4}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 22
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=1}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 23

execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll_start,limit=1] run scoreboard players set @s[tag=!roll_start] AnimationProg 0
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll_start,limit=1] run tag @s add roll_start
execute if entity @s[tag=roll_start] run function medabots_server:animations/topmaniac/roll_start/body

execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll,limit=1] run scoreboard players set @s[tag=!roll] AnimationProg 0
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll,limit=1] run tag @s add roll
execute if entity @s[tag=roll] run function medabots_server:animations/topmaniac/roll/body

execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll_stop,limit=1] run scoreboard players set @s[tag=!roll_stop] AnimationProg 0
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll_stop,limit=1] run tag @s add roll_stop
execute if entity @s[tag=roll_stop] run function medabots_server:animations/topmaniac/roll_stop/body
