teleport @s -1763 50 -755 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
tag @s add leave_stage
function medabots_server:stage/try/ruins_in_d/enter
tag @s remove leave_stage