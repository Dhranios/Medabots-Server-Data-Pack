teleport @s -1673 51 -148 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1705,y=0,z=-179,dx=63,dy=49,dz=63,tag=medabot] run function medabots_server:stage/clean_up/jungle_a/second_go