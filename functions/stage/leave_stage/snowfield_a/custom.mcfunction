teleport @s -1620 51 -216 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1668,y=0,z=-247,dx=105,dy=49,dz=63,tag=!medabot] run function medabots_server:stage/clean_up/snowfield_a/custom