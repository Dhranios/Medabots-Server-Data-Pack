tag @s[tag=!found_owner] remove found_owner_2
tag @s remove found_owner
execute store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute as @e[scores={MedabotNr=0..},tag=!medabot_model] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
execute at @e[tag=!cutscene,tag=this_medabot] run function medabots_server:animations/medabot/main
execute at @e[tag=cutscene,tag=this_medabot] run function medabots_server:animations/medabot/cutscene_main
kill @s[tag=!found_owner_2]
scoreboard players reset #temp MedabotNr
tag @e[tag=this_medabot] remove this_medabot