tag @s add this_medabot
scoreboard players operation #temp MedabotNr = @s MedabotNr
data modify storage medabots_server:data medabot.tags set from entity @s Tags
data modify storage medabots_server:data medabot.gliding set from entity @s FallFlying
execute store result storage medabots_server:data medabot.swimming byte 1 if entity @s[tag=swimming]
execute as @e[type=minecraft:armor_stand,tag=medabot_model,tag=!found_owner] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
execute as @e[type=minecraft:armor_stand,tag=this_medabot,tag=source,limit=1] run function medabots_server:animations/medabot/main
execute as @e[type=minecraft:armor_stand,tag=this_medabot,tag=!source] at @e[tag=this_medabot,tag=source,limit=1] run function medabots_server:animations/medabot/main
execute unless entity @e[tag=this_medabot,tag=source,limit=1] as @e[type=minecraft:armor_stand,tag=this_medabot,tag=!source] at @s run function medabots_server:animations/medabot/main
scoreboard players reset #temp MedabotNr
tag @s remove this_medabot
execute unless entity @e[tag=this_medabot,limit=1] if entity @s[tag=no_model,type=minecraft:player] run function medabots_server:entities/medabot/spawn_model
tag @s remove no_model 
execute unless entity @e[tag=this_medabot,limit=1] run tag @s add no_model 
tag @e[tag=this_medabot] remove this_medabot