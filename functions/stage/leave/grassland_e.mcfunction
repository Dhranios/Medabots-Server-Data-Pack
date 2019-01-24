teleport @s[tag=!enemy_player,tag=!-1,scores={Dialog=0,Verified=3}] -308 55 -101
execute unless entity @s[tag=!enemy_player,tag=!-1] run tellraw @s {"translate":"medabots_server:message.stage.cant_leave","color":"green"}
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}