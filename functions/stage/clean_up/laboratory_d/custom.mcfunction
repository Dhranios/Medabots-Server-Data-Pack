bossbar set medabots_server:laboratory_d/time players
tag @e[scores={Stage=35},type=!minecraft:player] add dead
data merge block -1828 51 -806 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_d/play"}}'}
setblock -1828 52 -808 minecraft:redstone_block