bossbar set medabots_server:seashore_b/time value 0
bossbar set medabots_server:seashore_b/time players @s
scoreboard players set @s Battle 1
scoreboard players set @s Stage 13
scoreboard players set @s Music 0
scoreboard players set @s MusicType 10
tag @s add custom
function medabots_server:stage/create/custom/builder