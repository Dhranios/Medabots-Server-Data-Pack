fill -1329 42 -115 -1270 38 -62 minecraft:grass_block replace minecraft:dirt
scoreboard players set @a[scores={Stage=36}] Music 0
scoreboard players set @a[scores={Stage=36}] MusicType 1
scoreboard players set @a[scores={Stage=36}] Battle 0
teleport @a[scores={Stage=36}] -1298 51 -87 -180 0
tag @e[scores={Stage=36},type=!minecraft:player] add dead
data merge block -1299 52 -115 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_1/play"}}'}
setblock -1299 53 -117 minecraft:redstone_block