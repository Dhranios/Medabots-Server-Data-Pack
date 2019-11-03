teleport @s -1704 50 -221 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1764,y=0,z=-247,dx=88,dy=48,dz=63,tag=medabot] run function medabots_server:stage/clean_up/iceberg_a/custom