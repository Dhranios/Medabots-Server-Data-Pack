teleport @s -1763 50 -755 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1793,y=0,z=-795,dx=62,dy=48,dz=62,tag=medabot] run function medabots_server:stage/clean_up/ruins_in_d/custom