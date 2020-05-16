execute at @s[tag=detached,tag=!hit] run function medabots_server:entities/topmaniac/shot_blade
execute if entity @s[tag=hit,tag=blade_0] run tag @e[distance=..0.7,tag=topmaniac,limit=1] remove detach_blade_0
execute if entity @s[tag=hit,tag=blade_1] run tag @e[distance=..0.7,tag=topmaniac,limit=1] remove detach_blade_1
execute if entity @s[tag=hit,tag=blade_2] run tag @e[distance=..0.7,tag=topmaniac,limit=1] remove detach_blade_2
execute if entity @s[tag=hit,tag=blade_3] run tag @e[distance=..0.7,tag=topmaniac,limit=1] remove detach_blade_3
execute if entity @s[tag=hit,tag=blade_4] run tag @e[distance=..0.7,tag=topmaniac,limit=1] remove detach_blade_4
execute if entity @s[tag=hit,tag=blade_5] run tag @e[distance=..0.7,tag=topmaniac,limit=1] remove detach_blade_5
execute if entity @s[tag=hit,tag=blade_6] run tag @e[distance=..0.7,tag=topmaniac,limit=1] remove detach_blade_6
execute if entity @s[tag=hit,tag=blade_7] run tag @e[distance=..0.7,tag=topmaniac,limit=1] remove detach_blade_7
execute if entity @s[tag=hit,tag=blade_8] run tag @e[distance=..0.7,tag=topmaniac,limit=1] remove detach_blade_8
execute if entity @s[tag=hit] run tag @s remove hit