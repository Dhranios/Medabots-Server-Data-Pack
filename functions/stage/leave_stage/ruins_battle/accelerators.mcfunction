teleport @s -1997 51 -560 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=medabot] run function medabots_server:stage/clean_up/ruins_battle/accelerators