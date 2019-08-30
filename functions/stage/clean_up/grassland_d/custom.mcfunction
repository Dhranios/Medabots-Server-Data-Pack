bossbar set medabots_server:grassland_d/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=30},type=!minecraft:player] add dead
data merge block -1571 52 -750 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_d/play"}}'}
setblock -1571 53 -752 minecraft:redstone_block