bossbar set medabots_server:grassland_c/time players
tag @e[scores={Stage=23},type=!minecraft:player] add dead
data merge block -1540 51 -480 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_c/play"}}'}
setblock -1540 52 -482 minecraft:redstone_block