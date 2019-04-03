teleport @s -1704 50 -221 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1764,y=0,z=-247,dx=88,dy=48,dz=63,tag=!enemy_medabot] run function medabots_server:stage/clean_up/iceberg_a/first_go