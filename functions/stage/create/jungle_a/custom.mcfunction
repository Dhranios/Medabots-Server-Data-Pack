bossbar set medabots_server:jungle_a/time value 0
bossbar set medabots_server:jungle_a/time players @s
scoreboard players set @s Battle 1
scoreboard players set @s Stage 3
scoreboard players set @s Music 0
scoreboard players set @s MusicType 9
function medabots_server:stage/create/custom/builder
function medabots_server:gamemodes/default/set_stats