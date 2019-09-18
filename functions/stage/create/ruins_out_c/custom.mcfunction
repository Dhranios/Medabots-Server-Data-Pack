bossbar set medabots_server:ruins_out_c/time value 0
bossbar set medabots_server:ruins_out_c/time players @s
function medabots_server:stage/create/custom/builder
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Battle 1
scoreboard players set @s Stage 27
scoreboard players set @s Music 0
scoreboard players set @s MusicType 18