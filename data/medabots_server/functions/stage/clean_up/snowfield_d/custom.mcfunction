bossbar set medabots_server:snowfield_d/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=32},type=!minecraft:player] add dead
data merge block -1573 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_d/play"}}'}
setblock -1573 53 -817 minecraft:redstone_block