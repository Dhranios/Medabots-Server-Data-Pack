teleport @s -1811 51 -683 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,tag=!medabot] run function medabots_server:stage/clean_up/park_b/first_go