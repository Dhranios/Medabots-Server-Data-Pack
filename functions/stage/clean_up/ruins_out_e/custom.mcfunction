bossbar set medabots_server:ruins_out_e/time players
tag @e[scores={Stage=58},type=!minecraft:player] add dead
data merge block -1893 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_e/play"}}'}
setblock -1893 53 -538 minecraft:redstone_block