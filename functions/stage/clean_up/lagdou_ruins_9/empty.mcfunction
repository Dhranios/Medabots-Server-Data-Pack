fill -1314 46 -291 -1261 46 -223 minecraft:air replace minecraft:fire
scoreboard players set @a[scores={Stage=44}] Music 0
scoreboard players set @a[scores={Stage=44}] MusicType 1
scoreboard players set @a[scores={Stage=44}] Battle 0
teleport @a[scores={Stage=44}] -1288 51 -256 -180 0
tag @e[scores={Stage=44},type=!minecraft:player] add dead
data merge block -1289 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_9/play"}}'}
setblock -1289 53 -281 minecraft:redstone_block