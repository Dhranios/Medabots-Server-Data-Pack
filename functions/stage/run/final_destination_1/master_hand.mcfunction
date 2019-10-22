execute as @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,type=!minecraft:player] unless entity @s[scores={Stage=61}] run scoreboard players set @s Stage 61
execute if entity @e[scores={Stage=61},tag=master_hand] run tag @s add no_end
execute as @s[scores={Battle=1..},tag=!no_end] run function medabots_server:stage/clean_up/final_destination_1/master_hand
advancement grant @s[scores={Battle=1..},tag=!no_end] only medabots_server:main/a_masters_order
execute if entity @s[scores={Battle=1..},tag=!no_end] positioned -2041 43 -196 run function medabots_server:stage/clear
tag @s remove no_end