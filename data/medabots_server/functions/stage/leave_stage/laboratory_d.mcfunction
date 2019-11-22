teleport @s -1827 50 -767 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1856,y=0,z=-811,dx=61,dy=48,dz=78,tag=medabot] run function medabots_server:stage/clean_up/iceberg_d