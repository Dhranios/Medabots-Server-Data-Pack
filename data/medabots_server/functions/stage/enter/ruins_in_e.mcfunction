scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:ruins_in_e run teleport @s[scores={Dialog=0,Verified=3}] 34 59 58 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}