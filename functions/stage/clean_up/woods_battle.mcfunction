setblock -1948 51 -643 minecraft:stone_pressure_plate
setblock -1950 51 -643 minecraft:stone_pressure_plate
setblock -1948 53 -642 minecraft:redstone_block
setblock -1950 53 -642 minecraft:redstone_block
fill -1972 45 -640 -1925 45 -593 minecraft:air replace minecraft:stone_slab
fill -1972 45 -640 -1925 45 -593 minecraft:air replace minecraft:comparator
tag @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,type=!minecraft:player] add dead
stopsound @s music
scoreboard players set @s Battle 0
scoreboard players set @s MusicType 1
scoreboard players set @s Music 299
playsound medabots_server:music.stage.stage_end music @s -1948 51 -617 3
scoreboard players add @s[tag=story_battle] Story 1
tag @s remove story_battle
teleport @s -1948 51 -617 -180 0