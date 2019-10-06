teleport @s -1539 51 -151 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1570,y=0,z=-180,dx=63,dy=49,dz=63,tag=!medabot] run function medabots_server:stage/clean_up/grassland_a/object_test