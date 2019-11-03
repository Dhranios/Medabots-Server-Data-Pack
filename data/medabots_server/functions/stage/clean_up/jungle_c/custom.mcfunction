bossbar set medabots_server:jungle_c/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=24},type=!minecraft:player] add dead
data merge block -1542 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_c/play"}}'}
setblock -1542 52 -547 minecraft:redstone_block