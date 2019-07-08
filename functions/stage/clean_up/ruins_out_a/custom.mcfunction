bossbar set medabots_server:ruins_out_a/time players
tag @e[scores={Stage=7},type=!minecraft:player] add dead
data merge block -1571 52 -315 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_a/play"}}'}
setblock -1571 53 -317 minecraft:redstone_block