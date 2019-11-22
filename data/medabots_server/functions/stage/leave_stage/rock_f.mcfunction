teleport @s -1890 51 -666 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1919,y=0,z=-696,dx=60,dy=49,dz=60,tag=medabot] run function medabots_server:stage/clean_up/rock_f