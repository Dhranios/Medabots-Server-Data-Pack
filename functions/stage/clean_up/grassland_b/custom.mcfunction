bossbar set medabots_server:grassland_b/time players
tag @e[scores={Stage=10},type=!minecraft:player] add dead
data merge block -1541 52 -414 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_b/play"}}'}
setblock -1541 53 -416 minecraft:redstone_block