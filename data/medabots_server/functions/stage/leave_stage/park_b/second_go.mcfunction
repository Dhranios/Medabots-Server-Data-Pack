teleport @s -1811 51 -683 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,tag=medabot] run function medabots_server:stage/clean_up/park_b/second_go