execute unless entity @s[tag=medabot,tag=!has_medabot_form] run teleport @s[scores={Dialog=0,Verified=3}] -355 55 -118 -135 0
execute if entity @s[tag=medabot,tag=!has_medabot_form] run tellraw @s {"translate":"medabots_server:message.stage.cant_leave","color":"green"}
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}