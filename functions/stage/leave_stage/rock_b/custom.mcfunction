teleport @s -1604 51 -351 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,tag=!medabot] run function medabots_server:stage/clean_up/rock_b/custom