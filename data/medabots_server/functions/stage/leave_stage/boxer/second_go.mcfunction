teleport @s -1890 50 -571 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1921,y=0,z=-603,dx=64,dy=48,dz=64,tag=medabot] run function medabots_server:stage/clean_up/boxer/second_go