teleport @s[tag=!medabot,scores={Dialog=0,Verified=3}] -455 55 -43 -90 0
scoreboard players set @s[tag=!medabot,scores={Dialog=0,Verified=3}] KillStreak 0
execute unless entity @s[tag=!medabot] run tellraw @s {"translate":"medabots_server:message.stage.cant_leave","color":"green"}
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}