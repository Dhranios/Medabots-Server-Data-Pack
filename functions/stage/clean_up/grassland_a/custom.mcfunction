bossbar set medabots_server:grassland_a/time players
tag @e[scores={Stage=1},type=!minecraft:player] add dead
data merge block -1540 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_a/play"}}'}
setblock -1540 53 -182 minecraft:redstone_block