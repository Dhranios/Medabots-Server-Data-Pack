teleport @s[tag=!enemy_medabot,tag=!-1,scores={Dialog=0,Verified=3}] -387 55 -95
execute unless entity @s[tag=!enemy_medabot,tag=!-1] run tellraw @s {"translate":"medabots_server:message.stage.cant_leave","color":"green"}
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}