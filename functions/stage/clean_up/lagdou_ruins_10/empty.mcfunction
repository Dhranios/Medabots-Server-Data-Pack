scoreboard players set @a[scores={Stage=45}] Music 0
scoreboard players set @a[scores={Stage=45}] MusicType 1
scoreboard players set @a[scores={Stage=45}] Battle 0
teleport @a[scores={Stage=45}] -1361 51 -80 -180 0
tag @e[scores={Stage=45},type=!minecraft:player] add dead
data merge block -1362 52 -114 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_10/play"}}'}
setblock -1362 53 -116 minecraft:redstone_block