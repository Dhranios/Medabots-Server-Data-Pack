# Move with
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blades] run tag @s add detached
execute if entity @s[tag=blade_0] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_0] run tag @s add detached
execute if entity @s[tag=blade_1] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_1] run tag @s add detached
execute if entity @s[tag=blade_2] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_2] run tag @s add detached
execute if entity @s[tag=blade_3] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_3] run tag @s add detached
execute if entity @s[tag=blade_4] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_4] run tag @s add detached
execute if entity @s[tag=blade_5] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_5] run tag @s add detached
execute if entity @s[tag=blade_6] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_6] run tag @s add detached
execute if entity @s[tag=blade_7] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_7] run tag @s add detached
execute if entity @s[tag=blade_8] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=detach_blade_8] run tag @s add detached
execute if entity @s[tag=blade_0] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_0] run tag @s remove detached
execute if entity @s[tag=blade_1] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_1] run tag @s remove detached
execute if entity @s[tag=blade_2] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_2] run tag @s remove detached
execute if entity @s[tag=blade_3] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_3] run tag @s remove detached
execute if entity @s[tag=blade_4] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_4] run tag @s remove detached
execute if entity @s[tag=blade_5] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_5] run tag @s remove detached
execute if entity @s[tag=blade_6] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_6] run tag @s remove detached
execute if entity @s[tag=blade_7] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_7] run tag @s remove detached
execute if entity @s[tag=blade_8] if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,tag=!detach_blades,tag=!detach_blade_8] run tag @s remove detached
scoreboard players set @s[tag=detached] AnimationProg 0

teleport @s[tag=!detached] ~ ~-1.43 ~ ~ ~
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=2..4}] if entity @s[tag=!detached] run function medabots_server:animations/topmaniac/blade_wake
execute if entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1,scores={State=1}] run function medabots_server:animations/topmaniac/blade_active

execute if entity @s[tag=roll_start] run function medabots_server:animations/topmaniac/roll_start/blade
execute if entity @s[tag=roll] run function medabots_server:animations/topmaniac/roll/blade
execute if entity @s[tag=roll_stop] run function medabots_server:animations/topmaniac/roll_stop/blade