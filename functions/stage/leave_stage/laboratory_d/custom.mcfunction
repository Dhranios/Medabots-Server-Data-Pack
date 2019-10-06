teleport @s -1827 50 -767 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1856,y=0,z=-811,dx=61,dy=48,dz=78,tag=!medabot] run function medabots_server:stage/clean_up/iceberg_d/custom