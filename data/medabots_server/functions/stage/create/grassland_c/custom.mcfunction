bossbar set medabots_server:grassland_c/time value 0
bossbar set medabots_server:grassland_c/time players @s
function medabots_server:stage/create/custom/builder
function medabots_server:gamemodes/default/set_stats
tag @s add main
scoreboard players set @s Battle 1
scoreboard players set @s Stage 23
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 18