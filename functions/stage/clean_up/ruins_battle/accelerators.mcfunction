fill -2017 45 -581 -1976 45 -540 minecraft:air replace minecraft:comparator
fill -2017 44 -581 -1976 44 -540 minecraft:grass_block replace minecraft:dirt
scoreboard players set @a[scores={Stage=49}] Music 0
scoreboard players set @a[scores={Stage=49}] MusicType 1
scoreboard players set @a[scores={Stage=49}] Battle 0
teleport @a[scores={Stage=49}] -1997 51 -560 -180 0
tag @e[scores={Stage=49},type=!minecraft:player] add dead
data merge block -1998 52 -581 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_battle/play"}}'}
setblock -1998 53 -583 minecraft:redstone_block