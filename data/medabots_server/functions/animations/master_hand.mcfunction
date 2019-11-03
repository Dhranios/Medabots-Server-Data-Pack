tag @s add this_master_hand
scoreboard players operation #temp MasterHandNr = @s MasterHandNr
execute as @e[tag=master_hand_model,tag=!found_owner] if score @s MasterHandNr = #temp MasterHandNr run function medabots_server:animations/master_hand/main
scoreboard players reset #temp MasterHandNr
tag @s remove this_master_hand