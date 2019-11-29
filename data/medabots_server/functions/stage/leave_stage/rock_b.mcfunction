teleport @s -1604 51 -351 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,tag=medabot] run function medabots_server:stage/clean_up/rock_b