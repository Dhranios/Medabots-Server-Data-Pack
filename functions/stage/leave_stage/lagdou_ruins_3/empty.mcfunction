teleport @s -1227 51 -19 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83,tag=!medabot] run function medabots_server:stage/clean_up/lagdou_ruins_3/empty