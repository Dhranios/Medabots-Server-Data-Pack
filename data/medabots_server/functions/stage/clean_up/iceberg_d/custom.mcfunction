bossbar set medabots_server:iceberg_d/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=33},type=!minecraft:player] add dead
data merge block -1701 51 -793 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_d/play"}}'}
setblock -1701 52 -795 minecraft:redstone_block