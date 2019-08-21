bossbar set medabots_server:laboratory_c/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=28},type=!minecraft:player] add dead
data merge block -1587 51 -619 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_c/play"}}'}
setblock -1587 52 -621 minecraft:redstone_block