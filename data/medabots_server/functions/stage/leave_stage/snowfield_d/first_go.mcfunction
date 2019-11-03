teleport @s -1572 51 -784 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1602,y=0,z=-815,dx=61,dy=49,dz=62,tag=medabot] run function medabots_server:stage/clean_up/snowfield_d/first_go