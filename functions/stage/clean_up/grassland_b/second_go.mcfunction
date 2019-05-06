bossbar set medabots_server:grassland_b/time players
bossbar set medabots_server:grassland_b/robattle players
scoreboard players set @a[scores={Stage=10}] Music 0
scoreboard players set @a[scores={Stage=10}] MusicType 1
scoreboard players set @a[scores={Stage=10}] Battle 0
teleport @a[scores={Stage=10}] -1540 51 -367 -180 0
tag @e[scores={Stage=10},type=!minecraft:player] add dead
data merge block -1541 52 -414 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_b/play"}}'}
setblock -1541 53 -416 minecraft:redstone_block