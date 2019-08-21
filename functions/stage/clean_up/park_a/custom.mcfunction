fill -1854 44 -633 -1764 44 -540 minecraft:air replace minecraft:barrier
bossbar set medabots_server:park_a/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=19},type=!minecraft:player] add dead
tag @e[scores={Stage=19},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=19},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1810 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_a/play"}}'}
setblock -1810 53 -635 minecraft:redstone_block