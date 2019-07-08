fill -1857 50 -730 -1764 44 -637 minecraft:air replace minecraft:barrier
bossbar set medabots_server:park_b/time players
tag @e[scores={Stage=20},type=!minecraft:player] add dead
data merge block -1812 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_b/play"}}'}
setblock -1812 53 -732 minecraft:redstone_block