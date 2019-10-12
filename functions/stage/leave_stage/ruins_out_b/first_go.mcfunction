teleport @s -1813 51 -489 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,tag=!medabot] run function medabots_server:stage/clean_up/ruins_out_b/first_go