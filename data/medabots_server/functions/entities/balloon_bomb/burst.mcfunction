function medabots_server:spawn_entities/bomb/delay_5
execute if entity @s[scores={ActionFloorNr=0..}] run scoreboard players operation @e[distance=..0.7,tag=bomb,type=minecraft:armor_stand] ActionFloorNr = @s ActionFloorNr
tag @s add dead