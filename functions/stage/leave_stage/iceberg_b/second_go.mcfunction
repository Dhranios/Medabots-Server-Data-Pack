teleport @s -1795 50 -394 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1824,y=0,z=-438,dx=60,dy=49,dz=90,tag=!enemy_medabot] run function medabots_server:stage/clean_up/iceberg_b/second_go