teleport @s -1570 51 -720 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1600,y=0,z=-750,dx=62,dy=49,dz=62,tag=medabot] run function medabots_server:stage/clean_up/grassland_d/first_go