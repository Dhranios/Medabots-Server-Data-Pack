bossbar set medabots_server:grassland_a/time value 0
bossbar set medabots_server:grassland_a/time players @s
function medabots_server:stage/create/custom/builder
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Battle 1
scoreboard players set @s Stage 1
scoreboard players set @s Music 0
scoreboard players set @s MusicType 7