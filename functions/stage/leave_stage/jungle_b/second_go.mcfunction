teleport @s -1620 51 -431 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=!enemy_medabot] run function medabots_server:stage/clean_up/jungle_b/second_go