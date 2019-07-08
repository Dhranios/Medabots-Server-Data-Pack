bossbar set medabots_server:seashore_b/time players
tag @e[scores={Stage=13},type=!minecraft:player] add dead
data merge block -1716 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/seashore_b/play"}}'}
setblock -1716 53 -444 minecraft:redstone_block