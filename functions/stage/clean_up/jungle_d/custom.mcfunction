bossbar set medabots_server:jungle_d/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=31},type=!minecraft:player] add dead
data merge block -1636 52 -767 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_d/play"}}'}
setblock -1636 53 -769 minecraft:redstone_block