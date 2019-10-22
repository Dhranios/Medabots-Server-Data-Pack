teleport @s[scores={Dialog=0,Verified=3}] -1985 43 -196 -180 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] KillStreak 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}