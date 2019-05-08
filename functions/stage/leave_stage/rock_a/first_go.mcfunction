teleport @s -1604 51 -149 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1636,y=0,z=-180,dx=63,dy=49,dz=63,tag=!enemy_medabot] run function medabots_server:stage/clean_up/rock_a/first_go