teleport @s -1714 51 -683 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=!enemy_medabot] run function medabots_server:stage/clean_up/paradise_a/second_go