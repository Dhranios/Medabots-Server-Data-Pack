teleport @s -1715 51 -492 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1762,y=0,z=-538,dx=94,dy=50,dz=93,tag=!medabot] run function medabots_server:stage/clean_up/snowfield_b/custom