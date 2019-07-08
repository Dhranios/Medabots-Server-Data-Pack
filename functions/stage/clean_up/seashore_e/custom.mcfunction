bossbar set medabots_server:seashore_e/time players
tag @e[scores={Stage=55},type=!minecraft:player] add dead
data merge block -1958 52 -329 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/seashore_e/play"}}'}
setblock -1958 53 -331 minecraft:redstone_block