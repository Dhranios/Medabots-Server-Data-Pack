teleport @s -1295 51 -32 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-1329,y=0,z=-58,dx=68,dy=50,dz=53,tag=medabot] run function medabots_server:stage/clean_up/lagdou_ruins_2