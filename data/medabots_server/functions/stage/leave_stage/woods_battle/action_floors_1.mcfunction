teleport @s -1949 51 -616 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=medabot] run function medabots_server:stage/clean_up/woods_battle/action_floors_1