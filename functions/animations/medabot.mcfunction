tag @s remove found_owner
execute if entity @s[tag=!cutscene] at @e[scores={MedabotNr=0..},tag=hostile,tag=!medabot_model] if score @s MedabotNr = @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run function medabots_server:animations/medabot/main
execute if entity @s[tag=cutscene] at @e[scores={MedabotNr=0..},tag=cutscene,tag=!medabot_model] if score @s MedabotNr = @e[distance=..0.1,tag=cutscene,limit=1] MedabotNr run function medabots_server:animations/medabot/cutscene_main
kill @s[tag=!found_owner]