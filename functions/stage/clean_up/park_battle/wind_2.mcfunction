fill -1945 45 -563 -1945 48 -563 minecraft:air
fill -1946 45 -562 -1946 48 -562 minecraft:air
fill -1947 45 -561 -1947 48 -561 minecraft:air
fill -1973 45 -589 -1924 45 -540 minecraft:air replace minecraft:stone_slab
fill -1973 45 -589 -1924 45 -540 minecraft:air replace minecraft:comparator
fill -1973 45 -589 -1924 45 -540 minecraft:grass_block replace minecraft:dirt
scoreboard players set @a[scores={Stage=50}] Music 0
scoreboard players set @a[scores={Stage=50}] MusicType 1
scoreboard players set @a[scores={Stage=50}] Battle 0
teleport @a[scores={Stage=50}] -1949 51 -564 -180 0
tag @e[scores={Stage=50},type=!minecraft:player] add dead
data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_battle/play"}}'}
setblock -1950 53 -591 minecraft:redstone_block