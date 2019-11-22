teleport @s -1715 51 -396 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-1762,y=0,z=-442,dx=94,dy=50,dz=94,tag=medabot] run function medabots_server:stage/clean_up/seashore_b