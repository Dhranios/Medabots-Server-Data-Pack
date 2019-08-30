bossbar set medabots_server:boxer/time value 0
bossbar set medabots_server:boxer/time players @s
scoreboard players set @s Battle 1
scoreboard players set @s Stage 29
scoreboard players set @s Music 0
scoreboard players set @s MusicType 21
function medabots_server:stage/create/custom/builder
function medabots_server:gamemodes/default/set_stats