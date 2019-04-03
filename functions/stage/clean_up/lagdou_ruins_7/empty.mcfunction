scoreboard players set @a[scores={Stage=42}] Music 0
scoreboard players set @a[scores={Stage=42}] MusicType 1
scoreboard players set @a[scores={Stage=42}] Battle 0
teleport @a[scores={Stage=42}] -1280 51 -171 -180 0
tag @e[scores={Stage=42},type=!minecraft:player] add dead
data merge block -1281 52 -178 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_7/play"}}'}
setblock -1281 53 -180 minecraft:redstone_block