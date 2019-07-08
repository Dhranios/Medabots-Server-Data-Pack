bossbar set medabots_server:laboratory_c/time players
tag @e[scores={Stage=28},type=!minecraft:player] add dead
data merge block -1587 51 -617 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_c/play"}}'}
setblock -1587 52 -619 minecraft:redstone_block