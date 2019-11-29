teleport @s -1812 51 -200 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1858,y=0,z=-247,dx=94,dy=49,dz=95,tag=medabot] run function medabots_server:stage/clean_up/grassland_e