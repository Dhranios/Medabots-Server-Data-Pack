teleport @s -1772 50 -285 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1812,y=0,z=-322,dx=80,dy=49,dz=72,tag=medabot] run function medabots_server:stage/clean_up/laboratory_a/second_go