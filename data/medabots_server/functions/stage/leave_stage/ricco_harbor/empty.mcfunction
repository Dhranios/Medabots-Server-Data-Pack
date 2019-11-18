teleport @s -1440 51 -158 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93,tag=medabot] run function medabots_server:stage/clean_up/ricco_harbor/empty