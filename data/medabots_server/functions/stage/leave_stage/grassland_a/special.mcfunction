teleport @s -1539 51 -151 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1570,y=0,z=-180,dx=63,dy=49,dz=63,tag=medabot] run function medabots_server:stage/clean_up/grassland_a/special