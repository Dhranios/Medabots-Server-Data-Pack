teleport @s -1727 50 -575 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1760,y=0,z=-633,dx=92,dy=49,dz=92,tag=!medabot] run function medabots_server:stage/clean_up/laboratory_b/custom