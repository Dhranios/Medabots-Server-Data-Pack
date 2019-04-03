teleport @s -1346 50 -219 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1376,y=0,z=-276,dx=58,dy=49,dz=68,tag=!enemy_medabot] run function medabots_server:stage/clean_up/lagdou_ruins_5/empty