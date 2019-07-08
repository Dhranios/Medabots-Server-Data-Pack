bossbar set medabots_server:seashore_c/time players
tag @e[scores={Stage=25},type=!minecraft:player] add dead
data merge block -1542 51 -608 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/seashore_c/play"}}'}
setblock -1542 52 -610 minecraft:redstone_block