teleport @s 20 59 21 -180 0
scoreboard players reset @s Stage
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
tag @s add leave_stage
function medabots_server:stage/try/ruins_battle/enter
tag @s remove leave_stage