teleport @s -1290 49 29 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1319,y=0,z=-2,dx=59,dy=49,dz=62,tag=!enemy_medabot] run function medabots_server:stage/clean_up/lagdou_ruins_8/empty