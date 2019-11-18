teleport @s -1999 51 -608 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute unless entity @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,tag=medabot] run function medabots_server:stage/clean_up/icefield_battle/balloon_bombs