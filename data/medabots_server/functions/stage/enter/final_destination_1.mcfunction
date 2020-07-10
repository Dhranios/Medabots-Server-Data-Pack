scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:final_destination_1 run teleport @s[scores={Dialog=0,Verified=3}] 25 43 34 -180 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] KillStreak 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}