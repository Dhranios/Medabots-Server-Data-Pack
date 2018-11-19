setblock -2000 51 -633 minecraft:stone_pressure_plate
setblock -1998 51 -633 minecraft:stone_pressure_plate
setblock -2000 53 -635 minecraft:redstone_block
setblock -1998 53 -635 minecraft:redstone_block
fill -1999 45 -621 -1998 47 -621 minecraft:air
fill -1986 45 -609 -1986 47 -608 minecraft:air
fill -1998 45 -596 -1999 47 -596 minecraft:air
fill -2011 45 -608 -2011 47 -609 minecraft:air
fill -1996 45 -608 -1996 48 -608 minecraft:air
fill -2001 45 -609 -2001 48 -609 minecraft:air
fill -2002 45 -605 -2002 46 -605 minecraft:air
fill -1995 45 -612 -1995 46 -612 minecraft:air
fill -1998 45 -623 -1999 46 -623 minecraft:air
fill -2013 45 -608 -2013 46 -609 minecraft:air
fill -2007 45 -600 -2007 46 -600 minecraft:air
fill -1998 45 -594 -1999 46 -594 minecraft:air
fill -1984 45 -608 -1984 46 -609 minecraft:air
fill -1990 45 -617 -1990 46 -617 minecraft:air
fill -2002 45 -612 -2002 46 -612 minecraft:air
fill -1995 45 -605 -1995 46 -605 minecraft:air
fill -2007 45 -617 -2007 46 -617 minecraft:air
fill -1990 45 -600 -1990 46 -600 minecraft:air
fill -2022 45 -632 -1975 45 -585 minecraft:air replace minecraft:comparator
tag @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,type=!minecraft:player] add dead
stopsound @s music
scoreboard players set @s Battle 0
scoreboard players set @s MusicType 1
scoreboard players set @s Music 299
playsound medabots_server:music.stage.stage_end music @s -1948 51 -617 3
scoreboard players add @s[tag=story_battle] Story 1
tag @s remove story_battle
teleport @s -1999 51 -608 -180 0