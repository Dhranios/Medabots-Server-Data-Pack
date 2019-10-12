teleport @s -1683 50 -259 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1729,y=0,z=-344,dx=90,dy=49,dz=92,tag=!medabot] run function medabots_server:stage/clean_up/ruins_in_a/first_go