teleport @s -1981 50 -478 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-2015,y=0,z=-536,dx=91,dy=48,dz=94,tag=!enemy_medabot] run function medabots_server:stage/clean_up/ruins_in_e/custom