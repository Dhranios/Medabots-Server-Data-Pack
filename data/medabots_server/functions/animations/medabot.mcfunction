tag @s add this_medabot
scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[tag=medabot_model,tag=!found_owner,tag=chest] if score @s MedabotNr = #temp MedabotNr run function medabots_server:animations/medabot/main
execute as @e[tag=medabot_model,tag=!found_owner,tag=!chest] if score @s MedabotNr = #temp MedabotNr run function medabots_server:animations/medabot/main
scoreboard players reset #temp MedabotNr
tag @s remove this_medabot