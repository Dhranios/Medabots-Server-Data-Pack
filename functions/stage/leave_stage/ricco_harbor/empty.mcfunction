teleport @s -1440 51 -158 -180 0
stopsound @s music
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93,tag=!medabot] run function medabots_server:stage/clean_up/ricco_harbor/empty