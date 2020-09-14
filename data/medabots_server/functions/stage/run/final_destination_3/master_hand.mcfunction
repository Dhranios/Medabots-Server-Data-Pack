execute as @e[type=!minecraft:player,distance=0..] unless entity @s[scores={Stage=0..}] unless entity @s[x=0,y=43,z=33,dx=49,dy=2,dz=2] unless entity @s[x=26,y=27,z=41,dx=4,dy=2,dz=4] run scoreboard players set @s Stage 63
execute if entity @e[scores={Stage=63},tag=master_hand,type=minecraft:ghast,tag=appeared] run scoreboard players set @s[scores={State=2}] State 1
execute if entity @e[scores={Stage=63},tag=master_hand,type=minecraft:ghast] run tag @s add no_end
execute if entity @e[scores={Stage=63},tag=crazy_hand,type=minecraft:ghast] run tag @s add no_end
execute as @s[scores={State=1..},tag=!no_end] run function medabots_server:stage/clean_up/final_destination_3
advancement grant @s[scores={State=1..},tag=!no_end] only medabots_server:stages/wave_1/final_destination_3_master_hand
execute if entity @s[scores={State=1..},tag=!no_end] positioned 26 43 35 run function medabots_server:stage/clear
tag @s remove no_end

execute as @e[scores={Stage=63},tag=!dying] at @s run teleport @s[y=0,dy=10] 25 52 10
execute as @e[scores={Stage=63},tag=!dying] at @s if block ~ ~-1 ~ minecraft:barrier positioned ~ ~-2 ~ align xyz unless entity @e[type=minecraft:area_effect_cloud,dx=0,dy=3,dz=0,limit=1] run teleport @s 25 52 10
execute as @e[scores={Stage=63},tag=!dying] at @s if block ~ ~-1 ~ minecraft:black_wool run teleport @s 25 52 10
execute as @e[scores={Stage=63},tag=!dying] at @s if block ~ ~-1 ~ minecraft:command_block run teleport @s 25 52 10