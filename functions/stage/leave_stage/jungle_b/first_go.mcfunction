teleport @s -1620 51 -431 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=!medabot] run function medabots_server:stage/clean_up/jungle_b/first_go