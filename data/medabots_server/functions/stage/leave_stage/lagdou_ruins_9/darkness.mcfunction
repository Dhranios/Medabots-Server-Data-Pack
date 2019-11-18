teleport @s -1288 51 -256 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1314,y=0,z=-291,dx=53,dy=49,dz=68,tag=medabot] run function medabots_server:stage/clean_up/lagdou_ruins_9/darkness