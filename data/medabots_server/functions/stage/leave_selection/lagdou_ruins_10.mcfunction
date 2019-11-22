teleport @s -1361 51 -80 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
execute unless entity @a[x=-1389,y=0,z=-114,dx=56,dy=50,dz=98,tag=medabot] run function medabots_server:stage/clean_up/lagdou_ruins_10