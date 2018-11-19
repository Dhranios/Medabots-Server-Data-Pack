setblock -1998 51 -582 minecraft:stone_pressure_plate
setblock -1996 51 -582 minecraft:stone_pressure_plate
setblock -1998 53 -583 minecraft:redstone_block
setblock -1996 53 -583 minecraft:redstone_block
fill -1992 45 -565 -1992 48 -565 minecraft:air
fill -1992 45 -556 -1992 48 -556 minecraft:air
fill -2001 45 -556 -2001 48 -556 minecraft:air
fill -2001 45 -565 -2001 48 -565 minecraft:air
fill -1985 45 -572 -1985 48 -572 minecraft:air
fill -1984 45 -560 -1984 48 -560 minecraft:air
fill -1985 45 -549 -1985 48 -549 minecraft:air
fill -1997 45 -548 -1997 48 -548 minecraft:air
fill -2008 45 -549 -2008 48 -549 minecraft:air
fill -2009 45 -561 -2009 48 -561 minecraft:air
fill -2008 45 -572 -2008 48 -572 minecraft:air
fill -1996 45 -573 -1996 48 -573 minecraft:air
fill -1981 45 -576 -1981 48 -576 minecraft:air
fill -1980 45 -562 -1980 48 -562 minecraft:air
fill -1981 45 -545 -1981 48 -545 minecraft:air
fill -1995 45 -544 -1995 48 -544 minecraft:air
fill -2012 45 -545 -2012 48 -545 minecraft:air
fill -2013 45 -559 -2013 48 -559 minecraft:air
fill -2012 45 -576 -2012 48 -576 minecraft:air
fill -1998 45 -577 -1998 48 -577 minecraft:air
fill -1980 45 -576 -1980 48 -576 minecraft:air
fill -1981 45 -544 -1981 48 -544 minecraft:air
fill -2013 45 -545 -2013 48 -545 minecraft:air
fill -2012 45 -577 -2012 48 -577 minecraft:air
fill -1996 45 -569 -1997 48 -569 minecraft:air
fill -1988 45 -560 -1988 48 -561 minecraft:air
fill -1997 45 -552 -1996 48 -552 minecraft:air
fill -2005 45 -561 -2005 48 -560 minecraft:air
fill -2017 45 -581 -1976 45 -540 minecraft:air replace minecraft:comparator
fill -2017 44 -581 -1976 44 -540 minecraft:grass_block replace minecraft:dirt
tag @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,type=!minecraft:player] add dead
stopsound @s music
scoreboard players set @s Battle 0
scoreboard players set @s MusicType 1
scoreboard players set @s Music 299
playsound medabots_server:music.stage.stage_end music @s -1997 51 -561 3
scoreboard players add @s[tag=story_battle] Story 1
tag @s remove story_battle
teleport @s -1997 51 -561 -180 0