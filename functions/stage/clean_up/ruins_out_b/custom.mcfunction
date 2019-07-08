fill -1858 44 -536 -1765 44 -442 minecraft:air replace minecraft:barrier
bossbar set medabots_server:ruins_out_b/time players
bossbar set medabots_server:ruins_out_b/robattle players
tag @e[scores={Stage=16},type=!minecraft:player] add dead
data merge block -1813 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_b/play"}}'}
setblock -1813 53 -538 minecraft:redstone_block