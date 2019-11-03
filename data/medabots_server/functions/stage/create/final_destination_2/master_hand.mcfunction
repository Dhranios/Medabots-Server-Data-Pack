execute positioned -1979 43 -221 rotated 90 0 run function medabots_server:spawn_entities/master_hand/2
teleport @s -1991 43 -221 -90 0
tag @s add main
bossbar set medabots_server:crazy_hand/2 value 360
bossbar set medabots_server:master_hand/2 value 360
bossbar set medabots_server:master_hand/2 players @s
scoreboard players set @s StageVersion 2
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Stage 62
scoreboard players set @s MusicType 54
scoreboard players set @s Music 0
scoreboard players set @s Battle 1
scoreboard players set @s KillStreak 0