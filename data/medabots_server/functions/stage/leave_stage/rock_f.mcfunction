teleport @s 29 59 30 -180 0
scoreboard players reset @s Stage
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute unless entity @s[scores={DeathTime=101}] run scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
scoreboard players reset @s[tag=stage_builder] NeededPlayers
tag @s[tag=stage_builder] remove stage_builder
tag @s add leave_stage
function medabots_server:stage/try/rock_f/enter
tag @s remove leave_stage