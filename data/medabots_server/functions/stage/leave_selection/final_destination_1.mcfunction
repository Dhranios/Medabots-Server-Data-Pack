teleport @s -2041 43 -196 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=medabot] run function medabots_server:stage/clean_up/final_destination_1