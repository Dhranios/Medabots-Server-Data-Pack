teleport @s -1572 51 -784 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1602,y=0,z=-815,dx=61,dy=49,dz=62,tag=!enemy_medabot] run function medabots_server:stage/clean_up/snowfield_d/custom