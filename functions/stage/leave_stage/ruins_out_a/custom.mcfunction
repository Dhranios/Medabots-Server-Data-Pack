teleport @s -1570 51 -284 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1634,y=0,z=-315,dx=127,dy=49,dz=64,tag=!medabot] run function medabots_server:stage/clean_up/ruins_out_a/custom