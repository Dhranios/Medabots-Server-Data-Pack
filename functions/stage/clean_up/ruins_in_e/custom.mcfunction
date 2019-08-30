bossbar set medabots_server:ruins_in_e/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=59},type=!minecraft:player] add dead
data merge block -1982 51 -535 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_e/play"}}'}
setblock -1982 52 -537 minecraft:redstone_block