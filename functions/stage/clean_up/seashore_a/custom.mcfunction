bossbar set medabots_server:seashore_a/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=4},type=!minecraft:player] add dead
data merge block -1540 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/seashore_a/play"}}'}
setblock -1540 53 -249 minecraft:redstone_block