teleport @s -1715 51 -396 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1762,y=0,z=-442,dx=94,dy=50,dz=94,tag=!medabot] run function medabots_server:stage/clean_up/seashore_b/custom