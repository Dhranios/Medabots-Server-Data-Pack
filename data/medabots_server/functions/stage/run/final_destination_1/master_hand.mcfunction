execute as @e[x=0,y=0,z=-15,dx=51,dy=87,dz=51,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 61
execute if entity @e[scores={Stage=61},tag=master_hand,type=minecraft:ghast] run tag @s add no_end
execute as @s[scores={State=1..},tag=!no_end] run function medabots_server:stage/clean_up/final_destination_1
advancement grant @s[scores={State=1..},tag=!no_end] only medabots_server:stages/wave_1/final_destination_1_master_hand
execute if entity @s[scores={State=1..},tag=!no_end] positioned 25 43 34 run function medabots_server:stage/clear
tag @s remove no_end

execute as @e[scores={Stage=61},tag=!dying] at @s run teleport @s[y=0,dy=10] 25 52 10