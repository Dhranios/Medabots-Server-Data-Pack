execute positioned 31 43 10 rotated 90 0 run function medabots_server:spawn_entities/master_hand/3
execute positioned 19 43 10 rotated -90 0 run function medabots_server:spawn_entities/crazy_hand/3
teleport @s 25 43 10 -90 0
tag @s add main
bossbar set medabots_server:master_hand/3 value 360
bossbar set medabots_server:master_hand/3 players @s
bossbar set medabots_server:crazy_hand/3 value 360
bossbar set medabots_server:crazy_hand/3 players @s
scoreboard players set @s StageVersion 2
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Stage 63
scoreboard players set @s MusicType 60
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s State 1
scoreboard players set @s KillStreak 0