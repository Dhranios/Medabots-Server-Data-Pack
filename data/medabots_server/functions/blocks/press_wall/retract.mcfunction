execute if entity @s[scores={Range=2..,Time=8}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.1
execute if entity @s[scores={Range=3..,Time=16}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.2
execute if entity @s[scores={Range=4..,Time=24}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.3
execute if entity @s[scores={Range=5..,Time=32}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.4
execute if entity @s[scores={Range=6..,Time=40}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.5
execute if entity @s[scores={Range=7..,Time=48}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.6
execute if entity @s[scores={Range=8..,Time=56}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.7
execute if entity @s[scores={Range=9..,Time=64}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.8
execute if entity @s[scores={Range=10..,Time=72}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.9
execute if entity @s[scores={Range=11..,Time=80}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.0
execute if entity @s[scores={Range=12..,Time=88}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.1
execute if entity @s[scores={Range=13..,Time=96}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.2
execute if entity @s[scores={Range=14..,Time=104}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.3
execute if entity @s[scores={Range=15..,Time=112}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.4
execute if entity @s[scores={Range=16..,Time=120}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.5
execute if entity @s[scores={Range=17..,Time=128}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.6
execute if entity @s[scores={Range=18..,Time=136}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.7
execute if entity @s[scores={Range=19..,Time=144}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.8
execute if entity @s[scores={Range=20..,Time=152}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.9
execute if entity @s[scores={Range=21..,Time=160}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 2.0
execute if entity @s[scores={Range=22..,Time=168}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 2.0
execute if entity @s[scores={Range=23..,Time=174}] run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 2.0
fill ^ ^ ^0.49 ^ ^3 ^0.49 minecraft:air replace minecraft:black_stained_glass
execute store result score #temp Money run data get entity @s HandItems[0].tag.CustomModelData
tag @s[scores={Time=120..}] add was_moving
execute if entity @s[tag=was_moving_3] run scoreboard players remove #temp Money 1
execute if entity @s[tag=was_extending] run scoreboard players add #temp Money 2
execute store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get #temp Money
execute store result entity @e[type=minecraft:armor_stand,tag=this_press_wall,limit=1] HandItems[0].tag.CustomModelData int 1 run scoreboard players get #temp Money
scoreboard players reset #temp Money
teleport @e[type=minecraft:armor_stand,tag=this_press_wall,tag=!dead] ^ ^ ^0.125
tag @s[tag=was_moving_2] add was_moving_3
tag @s[tag=was_moving_1] add was_moving_2
tag @s[tag=was_moving] add was_moving_1
tag @s add was_moving
tag @s remove was_extending
tag @s add was_retracting
tag @s remove extending_blocked
tag @s remove extending_was_blocked