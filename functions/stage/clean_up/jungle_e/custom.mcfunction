fill -1955 44 -247 -1861 44 -152 minecraft:air replace minecraft:barrier
bossbar set medabots_server:jungle_e/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=54},type=!minecraft:player] add dead
tag @e[scores={Stage=54},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=54},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1909 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_e/play"}}'}
setblock -1909 53 -249 minecraft:redstone_block