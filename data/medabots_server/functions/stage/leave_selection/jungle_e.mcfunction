teleport @s -1908 51 -200 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-1955,y=0,z=-247,dx=95,dy=49,dz=96,tag=medabot] run function medabots_server:stage/clean_up/jungle_e