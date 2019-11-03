bossbar set medabots_server:rock_b/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=11},type=!minecraft:player] add dead
data merge block -1605 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_b/play"}}'}
setblock -1605 53 -384 minecraft:redstone_block