teleport @s -1541 50 -578 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1570,y=0,z=-608,dx=60,dy=49,dz=60,tag=!medabot] run function medabots_server:stage/clean_up/seashore_c/first_go