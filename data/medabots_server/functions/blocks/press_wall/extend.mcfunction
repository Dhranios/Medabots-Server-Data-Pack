function medabots_server:blocks/press_wall/crush
execute unless block ^ ^ ^-0.51 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=2..,Time=8},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.1
execute if entity @s[scores={Range=3..,Time=16},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.2
execute if entity @s[scores={Range=4..,Time=24},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.3
execute if entity @s[scores={Range=5..,Time=32},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.4
execute if entity @s[scores={Range=6..,Time=40},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.5
execute if entity @s[scores={Range=7..,Time=48},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.6
execute if entity @s[scores={Range=8..,Time=56},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.7
execute if entity @s[scores={Range=9..,Time=64},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.8
execute if entity @s[scores={Range=10..,Time=72},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.9
execute if entity @s[scores={Range=11..,Time=80},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.0
execute if entity @s[scores={Range=12..,Time=88},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.1
execute if entity @s[scores={Range=13..,Time=96},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.2
execute if entity @s[scores={Range=14..,Time=104},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.3
execute if entity @s[scores={Range=15..,Time=112},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.4
execute if entity @s[scores={Range=16..,Time=120},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.5
execute if entity @s[scores={Range=17..,Time=128},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.6
execute if entity @s[scores={Range=18..,Time=136},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.7
execute if entity @s[scores={Range=19..,Time=144},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.8
execute if entity @s[scores={Range=20..,Time=152},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.9
execute if entity @s[scores={Range=21..,Time=160},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 2.0
execute if entity @s[scores={Range=22..,Time=168},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 2.0
execute if entity @s[scores={Range=23..,Time=174},tag=!extending_blocked] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 2.0
execute store result score #temp Money run data get entity @s HandItems[0].tag.CustomModelData
execute if entity @s[tag=was_moving,tag=!extending_blocked] run scoreboard players add #temp Money 1
execute if entity @s[tag=was_retracting] run scoreboard players remove #temp Money 2
execute store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get #temp Money
execute store result entity @e[type=minecraft:armor_stand,tag=this_press_wall,limit=1] HandItems[0].tag.CustomModelData int 1 run scoreboard players get #temp Money
scoreboard players reset #temp Money
execute if entity @s[tag=!extending_blocked] run teleport @e[type=minecraft:armor_stand,tag=this_press_wall] ^ ^ ^-0.125
execute at @e[type=minecraft:armor_stand,tag=this_press_wall,limit=1] run fill ^ ^ ^0.49 ^ ^3 ^0.49 minecraft:black_stained_glass replace minecraft:air
tag @s[tag=!extending_blocked] add was_moving
tag @s[tag=!extending_blocked] add was_extending
tag @s remove was_moving_1
tag @s remove was_moving_2
tag @s remove was_moving_3
tag @s[tag=!extending_blocked] remove was_retracting
tag @s[tag=!extending_blocked] remove extending_was_blocked
tag @s[tag=extending_blocked] add extending_was_blocked
