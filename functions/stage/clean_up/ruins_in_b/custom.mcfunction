fill -1667 43 -573 -1574 43 -480 minecraft:air replace minecraft:barrier
bossbar set medabots_server:ruins_in_b/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=17},type=!minecraft:player] add dead
tag @e[scores={Stage=17},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=17},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1621 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_b/play"}}'}
setblock -1621 52 -574 minecraft:redstone_block