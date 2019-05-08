teleport @s -1288 51 -256 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1314,y=0,z=-291,dx=53,dy=49,dz=68,tag=!enemy_medabot] run function medabots_server:stage/clean_up/lagdou_ruins_9/darkness