teleport @s -1890 50 -571 -180 0
scoreboard players reset @s Stage
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
tag @s add leave_stage
function medabots_server:stage/try/boxer/enter
tag @s remove leave_stage