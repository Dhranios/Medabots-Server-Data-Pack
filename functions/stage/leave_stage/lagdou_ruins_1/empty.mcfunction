teleport @s -1298 51 -87 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,tag=!medabot] run function medabots_server:stage/clean_up/lagdou_ruins_1/empty