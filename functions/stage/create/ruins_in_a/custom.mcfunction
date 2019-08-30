bossbar set medabots_server:ruins_in_a/time value 0
bossbar set medabots_server:ruins_in_a/time players @s
scoreboard players set @s Battle 1
scoreboard players set @s Stage 8
scoreboard players set @s Music 0
scoreboard players set @s MusicType 14
function medabots_server:stage/create/custom/builder
function medabots_server:gamemodes/default/set_stats