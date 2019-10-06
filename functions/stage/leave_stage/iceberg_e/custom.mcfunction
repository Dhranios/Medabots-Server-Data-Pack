teleport @s -1954 50 -379 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1997,y=0,z=-424,dx=88,dy=48,dz=91,tag=!medabot] run function medabots_server:stage/clean_up/iceberg_e/custom