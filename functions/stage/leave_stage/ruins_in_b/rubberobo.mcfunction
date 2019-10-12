teleport @s -1620 50 -526 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,tag=!medabot] run function medabots_server:stage/clean_up/ruins_in_b/rubberobo