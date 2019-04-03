fill -1257 37 -4 -1198 37 25 minecraft:grass_block replace minecraft:dirt
scoreboard players set @a[scores={Stage=38}] Music 0
scoreboard players set @a[scores={Stage=38}] MusicType 1
scoreboard players set @a[scores={Stage=38}] Battle 0
teleport @a[scores={Stage=38}] -1227 51 -19 -180 0
tag @e[scores={Stage=38},type=!minecraft:player] add dead
data merge block -1228 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_3/play"}}'}
setblock -1228 53 -60 minecraft:redstone_block