bossbar set medabots_server:paradise_b/time players
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
tag @e[scores={Stage=22},type=!minecraft:player] add dead
data merge block -1635 52 -638 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/paradise_b/play"}}'}
setblock -1635 53 -640 minecraft:redstone_block