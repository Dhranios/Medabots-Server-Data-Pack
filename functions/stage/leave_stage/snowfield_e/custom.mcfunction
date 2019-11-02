teleport @s -1866 51 -399 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1905,y=0,z=-438,dx=79,dy=49,dz=78,tag=medabot] run function medabots_server:stage/clean_up/snowfield_e/custom