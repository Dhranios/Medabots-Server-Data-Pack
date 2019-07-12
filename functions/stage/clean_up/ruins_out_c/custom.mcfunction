fill -1665 43 -704 -1604 43 -642 minecraft:air replace minecraft:barrier
bossbar set medabots_server:ruins_out_c/time players
tag @e[scores={Stage=27},type=!minecraft:player] add dead
data merge block -1636 51 -704 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_c/play"}}'}
setblock -1636 52 -706 minecraft:redstone_block