execute unless entity @s[tag=medabot,tag=!has_medabot_form] run scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
execute unless entity @s[tag=medabot,tag=!has_medabot_form] run scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute unless entity @s[tag=medabot,tag=!has_medabot_form] in minecraft:overworld run teleport @s[scores={Dialog=0,Verified=3}] -334 55 -127 -45 0
execute if entity @s[tag=medabot,tag=!has_medabot_form] run tellraw @s {"translate":"medabots_server:message.stage.cant_leave","color":"green"}
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}