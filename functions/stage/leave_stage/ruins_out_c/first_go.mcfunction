teleport @s -1635 50 -672 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,tag=!enemy_medabot] run function medabots_server:stage/clean_up/ruins_out_c/first_go