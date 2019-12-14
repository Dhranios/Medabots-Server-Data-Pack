bossbar set medabots_server:iceberg_a/time value 0
bossbar set medabots_server:iceberg_a/time players @s
function medabots_server:stage/create/generic/custom/builder
scoreboard players set @s Battle 1
scoreboard players set @s Stage 6
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 12