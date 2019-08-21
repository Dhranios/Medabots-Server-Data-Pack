bossbar set medabots_server:laboratory_a/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=9},type=!minecraft:player] add dead
data merge block -1773 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_a/play"}}'}
setblock -1773 52 -323 minecraft:redstone_block