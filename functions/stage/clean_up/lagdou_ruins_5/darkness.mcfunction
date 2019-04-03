fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
scoreboard players set @a[scores={Stage=40}] Music 0
scoreboard players set @a[scores={Stage=40}] MusicType 1
scoreboard players set @a[scores={Stage=40}] Battle 0
teleport @a[scores={Stage=40}] -1346 50 -219 -180 0
tag @e[scores={Stage=40},type=!minecraft:player] add dead
data merge block -1347 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_5/play"}}'}
setblock -1347 52 -230 minecraft:redstone_block