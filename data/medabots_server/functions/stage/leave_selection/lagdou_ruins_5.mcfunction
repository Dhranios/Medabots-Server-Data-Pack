teleport @s -1346 50 -219 -180 0
scoreboard players reset @s Stage
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
tag @s add leave_stage
function medabots_server:stage/try/lagdou_ruins_5/enter
tag @s remove leave_stage