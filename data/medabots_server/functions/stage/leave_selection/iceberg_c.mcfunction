teleport @s -1541 50 -648 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
tag @s add leave_stage
function medabots_server:stage/try/iceberg_c/enter
tag @s remove leave_stage