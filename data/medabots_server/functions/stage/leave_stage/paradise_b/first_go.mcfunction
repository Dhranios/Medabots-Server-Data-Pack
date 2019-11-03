teleport @s -1634 51 -607 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute unless entity @a[x=-1665,y=0,z=-638,dx=64,dy=49,dz=63,tag=medabot] run function medabots_server:stage/clean_up/paradise_b/first_go