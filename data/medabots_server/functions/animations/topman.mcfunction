tag @s add this_topman
scoreboard players operation #temp TopmanNr = @s TopmanNr
data modify storage medabots_server:topman Tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=topman_model,tag=!found_owner] if score @s TopmanNr = #temp TopmanNr run function medabots_server:animations/topman/main
scoreboard players reset #temp TopmanNr
tag @s remove this_topman