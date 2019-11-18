teleport @s -1298 51 -87 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,tag=medabot] run function medabots_server:stage/clean_up/lagdou_ruins_1/empty