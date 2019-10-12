teleport @s -1586 50 -599 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1596,y=0,z=-620,dx=22,dy=49,dz=44,tag=!medabot] run function medabots_server:stage/clean_up/laboratory_c/custom