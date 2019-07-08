bossbar set medabots_server:iceberg_b/time players
tag @e[scores={Stage=15},type=!minecraft:player] add dead
data merge block -1796 51 -437 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_b/play"}}'}
setblock -1796 52 -439 minecraft:redstone_block