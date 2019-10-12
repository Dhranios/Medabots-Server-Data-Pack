teleport @s -1634 51 -607 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
execute unless entity @a[x=-1665,y=0,z=-638,dx=64,dy=49,dz=63,tag=!medabot] run function medabots_server:stage/clean_up/paradise_b/custom