scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:boxer run teleport @s[scores={Dialog=0,Verified=3}] 31 59 32 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}