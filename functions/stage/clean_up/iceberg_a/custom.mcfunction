bossbar set medabots_server:iceberg_a/time players
tag @e[scores={Stage=6},type=!minecraft:player] add dead
data merge block -1705 51 -244 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_a/play"}}'}
setblock -1705 52 -246 minecraft:redstone_block