teleport @s -1949 51 -616 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=!medabot] run function medabots_server:stage/clean_up/woods_battle/balloon_bombs