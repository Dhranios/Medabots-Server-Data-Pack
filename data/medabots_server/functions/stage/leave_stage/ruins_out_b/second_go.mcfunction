teleport @s -1813 51 -489 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,tag=medabot] run function medabots_server:stage/clean_up/ruins_out_b/second_go