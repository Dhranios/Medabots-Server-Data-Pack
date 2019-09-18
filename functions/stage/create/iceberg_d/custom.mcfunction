bossbar set medabots_server:iceberg_d/time value 0
bossbar set medabots_server:iceberg_d/time players @s
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Battle 1
scoreboard players set @s Stage 33
scoreboard players set @s Music 0
scoreboard players set @s MusicType 12
function medabots_server:stage/create/custom/builder