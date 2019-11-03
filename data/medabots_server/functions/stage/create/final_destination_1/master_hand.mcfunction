execute positioned -2035 43 -220 rotated 90 0 run function medabots_server:spawn_entities/master_hand/1
teleport @s -2047 43 -220 -90 0
tag @s add main
bossbar set medabots_server:master_hand/1 value 300
bossbar set medabots_server:master_hand/1 players @s
scoreboard players set @s StageVersion 2
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Stage 61
scoreboard players set @s MusicType 52
scoreboard players set @s Music 0
scoreboard players set @s Battle 1
scoreboard players set @s KillStreak 0