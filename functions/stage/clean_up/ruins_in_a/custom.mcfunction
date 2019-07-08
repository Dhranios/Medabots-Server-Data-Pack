bossbar set medabots_server:ruins_in_a/time players
tag @e[scores={Stage=8},type=!minecraft:player] add dead
data merge block -1683 51 -277 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_a/play"}}'}
setblock -1685 52 -277 minecraft:redstone_block