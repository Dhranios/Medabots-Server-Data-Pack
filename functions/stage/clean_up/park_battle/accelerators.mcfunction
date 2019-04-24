scoreboard players set @a[scores={Stage=50}] Music 0
scoreboard players set @a[scores={Stage=50}] MusicType 1
scoreboard players set @a[scores={Stage=50}] Battle 0
teleport @a[scores={Stage=50}] -1949 51 -564 -180 0
tag @e[scores={Stage=50},type=!minecraft:player] add dead
data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_battle/play"}}'}
setblock -1950 53 -591 minecraft:redstone_block