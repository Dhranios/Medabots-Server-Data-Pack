teleport @s -1862 45 -611 0 0
tag @s add main
scoreboard players set @s State 1
scoreboard players set @s Stage 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 21
scoreboard players set @s PrevMusicType 21
tag @s remove try_tutorial_level