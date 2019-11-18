teleport @s -1570 51 -284 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1634,y=0,z=-315,dx=127,dy=49,dz=64,tag=medabot] run function medabots_server:stage/clean_up/ruins_out_a/second_go