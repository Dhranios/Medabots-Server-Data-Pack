# Move with
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blades] run tag @s add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_0] run tag @s[tag=blade_0] add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_1] run tag @s[tag=blade_1] add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_2] run tag @s[tag=blade_2] add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_3] run tag @s[tag=blade_3] add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_4] run tag @s[tag=blade_4] add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_5] run tag @s[tag=blade_5] add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_6] run tag @s[tag=blade_6] add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_7] run tag @s[tag=blade_7] add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_8] run tag @s[tag=blade_8] add detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_0] run tag @s[tag=blade_0] remove detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_1] run tag @s[tag=blade_1] remove detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_2] run tag @s[tag=blade_2] remove detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_3] run tag @s[tag=blade_3] remove detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_4] run tag @s[tag=blade_4] remove detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_5] run tag @s[tag=blade_5] remove detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_6] run tag @s[tag=blade_6] remove detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_7] run tag @s[tag=blade_7] remove detached
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_8] run tag @s[tag=blade_8] remove detached
scoreboard players set @s[tag=detached] AnimationProg 0

execute at @e[type=minecraft:spider,tag=this_topmaniac,limit=1] run teleport @s[tag=!detached] ~ ~-1.43 ~ ~ ~
execute at @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=2..4}] run teleport @s[tag=!detached] ~ ~0.17 ~ ~ ~
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=2..4}] run data modify entity @s[tag=!detached] Pose.Head[0] set value 90.0f
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=2..4}] run scoreboard players set @s[tag=!detached] AnimationProg 0
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=1}] run data modify entity @s[tag=!detached] Pose.Head[0] set value 0.0f

execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll_start,limit=1] run scoreboard players set @s[tag=!roll_start] AnimationProg 0
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll_start,limit=1] run tag @s add roll_start
execute if entity @s[tag=roll_start] run function medabots_server:animations/topmaniac/roll_start/blade

execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll,limit=1] run scoreboard players set @s[tag=!roll] AnimationProg 0
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll,limit=1] run tag @s add roll
execute if entity @s[tag=roll] run function medabots_server:animations/topmaniac/roll/blade

execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll_stop,limit=1] run scoreboard players set @s[tag=!roll_stop] AnimationProg 0
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,tag=roll_stop,limit=1] run tag @s add roll_stop
execute if entity @s[tag=roll_stop] run function medabots_server:animations/topmaniac/roll_stop/blade

execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=1},tag=!roll_start,tag=!roll,tag=!roll_stop] if entity @s[tag=!detached] run function medabots_server:animations/topmaniac/idle