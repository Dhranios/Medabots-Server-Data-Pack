teleport @s -1890 51 -666 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1919,y=0,z=-696,dx=60,dy=49,dz=60,tag=!enemy_medabot] run function medabots_server:stage/clean_up/rock_f/custom