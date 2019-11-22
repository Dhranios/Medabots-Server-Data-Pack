teleport @s -1981 50 -478 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-2015,y=0,z=-536,dx=91,dy=48,dz=94,tag=medabot] run function medabots_server:stage/clean_up/ruins_in_e