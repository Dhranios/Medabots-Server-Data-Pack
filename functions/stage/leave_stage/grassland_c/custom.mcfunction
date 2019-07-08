teleport @s -1539 50 -449 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1570,y=0,z=-480,dx=65,dy=48,dz=63,tag=!enemy_medabot] run function medabots_server:stage/clean_up/grassland_c/custom