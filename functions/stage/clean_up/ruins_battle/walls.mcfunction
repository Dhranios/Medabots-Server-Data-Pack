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
fill -2017 44 -581 -1976 44 -540 minecraft:grass_block replace minecraft:dirt
scoreboard players set @a[scores={Stage=49}] Music 0
scoreboard players set @a[scores={Stage=49}] MusicType 1
scoreboard players set @a[scores={Stage=49}] Battle 0
teleport @a[scores={Stage=49}] -1997 51 -560 -180 0
tag @e[scores={Stage=49},type=!minecraft:player] add dead
data merge block -1998 52 -581 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_battle/play"}}'}
setblock -1998 53 -583 minecraft:redstone_block
teleport @s -1997 51 -561 -180 0