teleport @s -1809 51 -587 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,tag=!medabot] run function medabots_server:stage/clean_up/park_a/second_go