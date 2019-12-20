execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100
execute store result score @s OtherX run data get entity @e[type=minecraft:area_effect_cloud,tag=missile,limit=1] Pos[0] 100
execute store result score @s OtherY run data get entity @e[type=minecraft:area_effect_cloud,tag=missile,limit=1] Pos[1] 100
execute store result score @s OtherZ run data get entity @e[type=minecraft:area_effect_cloud,tag=missile,limit=1] Pos[2] 100
execute run scoreboard players operation @s OtherX -= @s PosX
execute run scoreboard players operation @s OtherY -= @s PosY
execute run scoreboard players operation @s OtherZ -= @s PosZ
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s OtherX
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s OtherY
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s OtherZ
tag @s remove new