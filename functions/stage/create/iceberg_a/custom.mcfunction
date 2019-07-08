bossbar set medabots_server:iceberg_a/time value 0
bossbar set medabots_server:iceberg_a/time players @s
scoreboard players set @s Battle 1
scoreboard players set @s Stage 6
scoreboard players set @s Music 0
scoreboard players set @s MusicType 12
tag @s add custom
function medabots_server:stage/create/custom/builder