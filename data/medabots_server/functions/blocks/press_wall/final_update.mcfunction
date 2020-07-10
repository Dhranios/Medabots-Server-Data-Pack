execute store result score #temp Money run data get entity @s HandItems[0].tag.CustomModelData
execute if entity @s[tag=was_extending,tag=!extending_blocked] run scoreboard players add #temp Money 1
execute if entity @s[tag=was_extending,tag=!extending_blocked,scores={Time=120..}] run scoreboard players add #temp Money 1
execute if entity @s[tag=was_extending,tag=extending_blocked] run scoreboard players add #temp Money 1
execute if entity @s[tag=was_extending,tag=extending_blocked,scores={Time=120..}] run scoreboard players add #temp Money 1
execute if entity @s[tag=was_retracting] run scoreboard players remove #temp Money 4
execute store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get #temp Money
execute store result entity @e[type=minecraft:armor_stand,tag=this_press_wall,limit=1] HandItems[0].tag.CustomModelData int 1 run scoreboard players get #temp Money
scoreboard players reset #temp Money
tag @s remove was_moving
tag @s remove was_moving_1
tag @s remove was_moving_2
tag @s remove was_moving_3
tag @s remove was_extending
tag @s remove was_retracting