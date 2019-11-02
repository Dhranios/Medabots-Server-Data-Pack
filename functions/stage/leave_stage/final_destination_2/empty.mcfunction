teleport @s -1985 43 -196 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] run function medabots_server:stage/clean_up/final_destination_2/empty
scoreboard players set @s KillStreak 0