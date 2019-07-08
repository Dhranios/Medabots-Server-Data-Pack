fill -1761 44 -730 -1668 44 -637 minecraft:air replace minecraft:barrier
bossbar set medabots_server:paradise_a/time players
tag @e[scores={Stage=21},type=!minecraft:player] add dead
data merge block -1715 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/paradise_a/play"}}'}
setblock -1715 53 -732 minecraft:redstone_block