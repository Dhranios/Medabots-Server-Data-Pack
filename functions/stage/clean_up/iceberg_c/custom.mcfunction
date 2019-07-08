bossbar set medabots_server:iceberg_c/time players
tag @e[scores={Stage=26},type=!minecraft:player] add dead
data merge block -1542 51 -684 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_c/play"}}'}
setblock -1542 52 -686 minecraft:redstone_block