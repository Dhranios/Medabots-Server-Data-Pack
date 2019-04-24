bossbar set medabots_server:iceberg_a/time players
bossbar set medabots_server:iceberg_a/robattle players
scoreboard players set @a[scores={Stage=6}] Music 0
scoreboard players set @a[scores={Stage=6}] MusicType 1
scoreboard players set @a[scores={Stage=6}] Battle 0
teleport @a[scores={Stage=6}] -1704 50 -221 -180 0
tag @e[scores={Stage=6},type=!minecraft:player] add dead
data merge block -1705 51 -244 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_a/play"}}'}
setblock -1705 52 -245 minecraft:redstone_block