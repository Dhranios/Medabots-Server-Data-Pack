tag @s add this_medabot
scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[type=minecraft:armor_stand,tag=medabot_model,tag=!found_owner] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
execute as @e[type=minecraft:armor_stand,tag=this_medabot,tag=source,limit=1] run function medabots_server:animations/medabot/main
execute as @e[type=minecraft:armor_stand,tag=this_medabot,tag=!source] at @e[tag=this_medabot,tag=source,limit=1] run function medabots_server:animations/medabot/main
execute as @e[type=minecraft:armor_stand,tag=this_medabot,tag=!source] unless entity @e[tag=this_medabot,tag=source,limit=1] at @s run function medabots_server:animations/medabot/main
scoreboard players reset #temp MedabotNr
tag @e[tag=this_medabot] remove this_medabot