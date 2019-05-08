teleport @s -1236 51 -99 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1267,y=0,z=-139,dx=60,dy=49,dz=77,tag=!enemy_medabot] run function medabots_server:stage/clean_up/lagdou_ruins_6/darkness