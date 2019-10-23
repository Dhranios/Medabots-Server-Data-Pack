scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[scores={MedabotNr=0..},tag=!dead] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
execute if entity @s[tag=!found_owner_2] at @e[tag=this_medabot,tag=medabot,limit=1] run function medabots_server:animations/medabot/main
execute if entity @s[tag=chest] at @e[tag=this_medabot,tag=medabot,limit=1] run function medabots_server:animations/medabot/main
execute if entity @s[tag=chest] at @e[tag=this_medabot,tag=medabot,limit=1] as @e[tag=this_medabot,tag=medabot_model,tag=!chest] run function medabots_server:animations/medabot/main
scoreboard players reset #temp MedabotNr
tag @e[tag=this_medabot] remove this_medabot