teleport @s -1997 51 -560 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=!medabot] run function medabots_server:stage/clean_up/ruins_battle/lasers