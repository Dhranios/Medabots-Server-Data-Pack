teleport @s -1539 50 -449 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1570,y=0,z=-480,dx=65,dy=48,dz=63,tag=medabot] run function medabots_server:stage/clean_up/grassland_c/second_go