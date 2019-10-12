teleport @s -1673 51 -148 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1705,y=0,z=-179,dx=63,dy=49,dz=63,tag=!medabot] run function medabots_server:stage/clean_up/jungle_a/first_go