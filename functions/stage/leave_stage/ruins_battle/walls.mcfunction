teleport @s -1997 51 -560 -180 0
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=!enemy_medabot] run function medabots_server:stage/clean_up/ruins_battle/walls