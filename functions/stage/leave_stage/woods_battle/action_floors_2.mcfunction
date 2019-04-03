teleport @s -1949 51 -617 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=!enemy_medabot] run function medabots_server:stage/clean_up/woods_battle/action_floors_2