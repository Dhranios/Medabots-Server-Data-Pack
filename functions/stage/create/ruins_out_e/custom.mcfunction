bossbar set medabots_server:ruins_out_e/time value 0
bossbar set medabots_server:ruins_out_e/time players @s
scoreboard players set @s Battle 1
scoreboard players set @s Stage 58
scoreboard players set @s Music 0
scoreboard players set @s MusicType 13
tag @s add custom
function medabots_server:stage/create/custom/builder