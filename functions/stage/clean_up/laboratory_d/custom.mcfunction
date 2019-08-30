bossbar set medabots_server:laboratory_d/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=35},type=!minecraft:player] add dead
data merge block -1828 51 -806 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_d/play"}}'}
setblock -1828 52 -808 minecraft:redstone_block