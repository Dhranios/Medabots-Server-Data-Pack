teleport @s -1635 50 -673 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1665,y=0,z=-704,dx=62,dy=49,dz=63,tag=medabot] run function medabots_server:stage/clean_up/ruins_out_c/first_go