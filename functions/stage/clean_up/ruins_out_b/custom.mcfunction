fill -1858 44 -536 -1765 44 -442 minecraft:air replace minecraft:barrier
bossbar set medabots_server:ruins_out_b/time players
bossbar set medabots_server:ruins_out_b/robattle players
tag @e[scores={Stage=16},type=!minecraft:player] add dead
tag @e[scores={Stage=16},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=16},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1814 52 -535 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_b/play"}}'}
setblock -1814 53 -537 minecraft:redstone_block