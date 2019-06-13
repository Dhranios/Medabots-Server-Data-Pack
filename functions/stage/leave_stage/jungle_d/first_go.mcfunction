teleport @s -1635 51 -737 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1665,y=0,z=-767,dx=61,dy=49,dz=61,tag=!enemy_medabot] run function medabots_server:stage/clean_up/jungle_d/first_go