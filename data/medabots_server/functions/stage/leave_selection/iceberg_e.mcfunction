teleport @s -1954 50 -379 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-1997,y=0,z=-424,dx=88,dy=48,dz=91,tag=medabot] run function medabots_server:stage/clean_up/iceberg_e