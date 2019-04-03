teleport @s -1295 51 -32 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1329,y=0,z=-58,dx=68,dy=50,dz=53,tag=!enemy_medabot] run function medabots_server:stage/clean_up/lagdou_ruins_2/empty