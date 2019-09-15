teleport @s -1540 51 -367 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1570,y=0,z=-414,dx=62,dy=49,dz=95,tag=!enemy_medabot] run function medabots_server:stage/clean_up/grassland_b/custom