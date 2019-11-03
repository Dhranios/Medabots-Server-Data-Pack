bossbar set medabots_server:rock_e/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=53},type=!minecraft:player] add dead
data merge block -1861 52 -345 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_e/play"}}'}
setblock -1861 53 -347 minecraft:redstone_block