bossbar set medabots_server:snowfield_d/time value 0
bossbar set medabots_server:snowfield_d/time players @s
function medabots_server:stage/create/custom/builder
function medabots_server:gamemodes/default/set_stats
tag @s add main
scoreboard players set @s Battle 1
scoreboard players set @s Stage 32
scoreboard players set @s Music 0
scoreboard players set @s MusicType 11