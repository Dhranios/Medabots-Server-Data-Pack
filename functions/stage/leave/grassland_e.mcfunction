teleport @s[tag=!medabot,scores={Dialog=0,Verified=3}] -308 55 -101 -135 0
execute unless entity @s[tag=!medabot] run tellraw @s {"translate":"medabots_server:message.stage.cant_leave","color":"green"}
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}