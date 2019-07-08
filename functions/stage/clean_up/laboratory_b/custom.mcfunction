bossbar set medabots_server:laboratory_b/time players
tag @e[scores={Stage=18},type=!minecraft:player] add dead
data merge block -1728 51 -604 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_b/play"}}'}
setblock -1728 52 -606 minecraft:redstone_block