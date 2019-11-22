teleport @s -1892 51 -489 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-1922,y=0,z=-536,dx=62,dy=49,dz=95,tag=medabot] run function medabots_server:stage/clean_up/ruins_out_e