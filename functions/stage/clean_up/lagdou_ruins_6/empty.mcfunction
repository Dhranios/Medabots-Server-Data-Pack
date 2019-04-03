scoreboard players set @a[scores={Stage=41}] Music 0
scoreboard players set @a[scores={Stage=41}] MusicType 1
scoreboard players set @a[scores={Stage=41}] Battle 0
teleport @a[scores={Stage=41}] -1236 51 -99 -180 0
tag @e[scores={Stage=41},type=!minecraft:player] add dead
data merge block -1237 52 -139 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_6/play"}}'}
setblock -1237 53 -141 minecraft:redstone_block