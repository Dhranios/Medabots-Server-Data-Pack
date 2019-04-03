teleport @s -1772 50 -285 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1812,y=0,z=-322,dx=80,dy=49,dz=72,tag=!enemy_medabot] run function medabots_server:stage/clean_up/laboratory_a/rubberobo