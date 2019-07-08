bossbar set medabots_server:snowfield_e/time players
tag @e[scores={Stage=56},type=!minecraft:player] add dead
data merge block -1867 52 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_e/play"}}'}
setblock -1867 53 -440 minecraft:redstone_block