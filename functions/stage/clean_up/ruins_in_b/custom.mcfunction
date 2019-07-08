fill -1667 43 -573 -1574 43 -480 minecraft:air replace minecraft:barrier
bossbar set medabots_server:ruins_in_b/time players
tag @e[scores={Stage=17},type=!minecraft:player] add dead
data merge block -1621 51 -570 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_b/play"}}'}
setblock -1621 52 -572 minecraft:redstone_block