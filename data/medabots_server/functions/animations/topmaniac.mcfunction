tag @s add this_topmaniac
scoreboard players operation #temp TopmaniacNr = @s TopmaniacNr
data modify storage medabots_server:data topmaniac.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=topmaniac_model,tag=!found_owner] if score @s TopmaniacNr = #temp TopmaniacNr run function medabots_server:animations/topmaniac/main
scoreboard players reset #temp TopmaniacNr
tag @s remove this_topmaniac