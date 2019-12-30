teleport @s -1440 51 -158 -180 0
tag @s remove achieve_screw_you_all
scoreboard players reset @s Stage
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute unless entity @s[scores={DeathTime=101}] run scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
tag @s add leave_stage
function medabots_server:stage/try/ricco_harbor/enter
tag @s remove leave_stage