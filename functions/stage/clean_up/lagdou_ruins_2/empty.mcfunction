fill -1329 40 -58 -1261 40 -5 minecraft:grass_block replace minecraft:dirt
scoreboard players set @a[scores={Stage=37}] Music 0
scoreboard players set @a[scores={Stage=37}] MusicType 1
scoreboard players set @a[scores={Stage=37}] Battle 0
teleport @a[scores={Stage=37}] -1295 51 -32 -180 0
tag @e[scores={Stage=37},type=!minecraft:player] add dead
data merge block -1296 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_2/play"}}'}
setblock -1296 53 -60 minecraft:redstone_block