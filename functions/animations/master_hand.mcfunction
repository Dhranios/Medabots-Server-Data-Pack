tag @s add this_master_hand
execute store result score #temp MasterHandNr run scoreboard players get @s MasterHandNr
execute as @e[tag=master_hand_model,tag=!found_owner] if score @s MasterHandNr = #temp MasterHandNr run function medabots_server:animations/master_hand/main
scoreboard players reset #temp MasterHandNr
tag @s remove this_master_hand