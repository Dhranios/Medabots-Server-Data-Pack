teleport @s -1862 45 -611 0 0
scoreboard players set @s Battle 1
scoreboard players set @s Stage 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
scoreboard players set @s PrevMusicType 22
tag @s remove try_tutorial_level