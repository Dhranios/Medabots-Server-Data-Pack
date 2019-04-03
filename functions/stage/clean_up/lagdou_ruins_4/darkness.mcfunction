fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
scoreboard players set @a[scores={Stage=39}] Music 0
scoreboard players set @a[scores={Stage=39}] MusicType 1
scoreboard players set @a[scores={Stage=39}] Battle 0
teleport @a[scores={Stage=39}] -1345 51 -127 -180 0
tag @e[scores={Stage=39},type=!minecraft:player] add dead
data merge block -1346 52 -133 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_4/play"}}'}
setblock -1346 53 -135 minecraft:redstone_block