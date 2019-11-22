teleport @s -1985 43 -196 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] run function medabots_server:stage/clean_up/final_destination_2