execute positioned ~ ~1 ~ run function medabots_server:spawn_entities/bomb/delay_5
execute if entity @s[scores={ActionFloorNr=0..}] positioned ~ ~1 ~ run scoreboard players operation @e[distance=..0.7,tag=bomb] ActionFloorNr = @s ActionFloorNr
tag @s add dead