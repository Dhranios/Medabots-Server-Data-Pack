teleport @s -1890 50 -571 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1921,y=0,z=-603,dx=64,dy=48,dz=64,tag=!medabot] run function medabots_server:stage/clean_up/boxer/second_go