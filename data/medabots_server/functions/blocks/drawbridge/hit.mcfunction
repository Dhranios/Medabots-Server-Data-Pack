execute if entity @e[distance=..0.7,tag=destroy] run tag @s add fall
execute if entity @e[distance=..0.7,tag=press] run tag @s add fall
execute if entity @e[distance=..0.7,scores={MedapartType=15}] run tag @s add fall
execute if entity @s[tag=fall] run function medabots_server:blocks/drawbridge/fall
tag @s[tag=fall] remove fall