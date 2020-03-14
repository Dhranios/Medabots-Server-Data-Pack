tag @s add this_crazy_hand
scoreboard players operation #temp CrazyHandNr = @s CrazyHandNr
execute as @e[type=minecraft:armor_stand,tag=crazy_hand_model,tag=!found_owner] if score @s CrazyHandNr = #temp CrazyHandNr run function medabots_server:animations/crazy_hand/main
scoreboard players reset #temp CrazyHandNr
tag @s remove this_crazy_hand