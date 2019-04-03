teleport @s -1570 51 -284 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1634,y=0,z=-315,dx=127,dy=49,dz=64,tag=!enemy_medabot] run function medabots_server:stage/clean_up/ruins_out_a/first_go