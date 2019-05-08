teleport @s -1949 51 -564 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=!enemy_medabot] run function medabots_server:stage/clean_up/park_battle/walls