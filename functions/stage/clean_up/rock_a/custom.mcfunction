bossbar set medabots_server:rock_a/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=2},type=!minecraft:player] add dead
data merge block -1605 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_a/play"}}'}
setblock -1605 53 -182 minecraft:redstone_block