fill -1996 45 -608 -1996 48 -608 minecraft:air
fill -2001 45 -609 -2001 48 -609 minecraft:air
scoreboard players set @a[scores={Stage=48}] Music 0
scoreboard players set @a[scores={Stage=48}] MusicType 1
scoreboard players set @a[scores={Stage=48}] Battle 0
teleport @a[scores={Stage=48}] -1999 51 -608 -180 0
tag @e[scores={Stage=48},type=!minecraft:player] add dead
data merge block -2000 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/icefield_battle/play"}}'}
setblock -2000 53 -634 minecraft:redstone_block