bossbar set medabots_server:iceberg_e/time players
tag @e[scores={Stage=57},type=!minecraft:player] add dead
data merge block -1954 51 -390 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_e/play"}}'}
setblock -1954 52 -392 minecraft:redstone_block