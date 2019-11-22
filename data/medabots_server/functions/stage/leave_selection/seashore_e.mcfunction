teleport @s -1957 51 -290 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-2003,y=0,z=-329,dx=93,dy=49,dz=78,tag=medabot] run function medabots_server:stage/clean_up/seashore_e