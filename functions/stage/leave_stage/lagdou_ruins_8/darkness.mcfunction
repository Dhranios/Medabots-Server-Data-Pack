teleport @s -1290 49 29 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1319,y=0,z=-2,dx=59,dy=48,dz=62,tag=medabot] run function medabots_server:stage/clean_up/lagdou_ruins_8/darkness