teleport @s -1827 50 -767 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1856,y=0,z=-811,dx=61,dy=48,dz=78,tag=medabot] run function medabots_server:stage/clean_up/laboratory_d/first_go