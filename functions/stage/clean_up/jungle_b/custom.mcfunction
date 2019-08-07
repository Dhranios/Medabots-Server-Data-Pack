fill -1666 44 -477 -1573 44 -386 minecraft:air replace minecraft:barrier
bossbar set medabots_server:jungle_b/time players
tag @e[scores={Stage=12},type=!minecraft:player] add dead
tag @e[scores={Stage=12},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=12},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1621 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_b/play"}}'}
setblock -1621 53 -479 minecraft:redstone_block