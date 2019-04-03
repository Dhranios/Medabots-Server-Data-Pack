teleport @s -1620 51 -216 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1668,y=0,z=-247,dx=105,dy=49,dz=63,tag=!enemy_medabot] run function medabots_server:stage/clean_up/snowfield_a/rubberobo