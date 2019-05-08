fill -1260 41 60 -1319 46 -2 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1260 41 60 -1319 46 -2 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1260 41 60 -1319 46 -2 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1260 41 60 -1319 46 -2 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
setblock -1288 39 35 minecraft:torch
fill -1319 38 -2 -1260 38 60 minecraft:water[level=0] replace minecraft:oak_slab
fill -1313 36 7 -1308 36 12 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1316 36 28 -1314 36 33 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1319 36 43 -1317 36 51 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1307 36 46 -1305 36 51 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1304 36 58 -1302 36 60 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1286 36 55 -1281 36 57 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1262 36 34 -1260 36 42 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1271 36 19 -1266 36 21 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1292 36 43 -1290 36 54 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1283 36 34 -1275 36 36 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1292 36 25 -1290 36 30 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1286 36 22 -1275 36 24 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1292 36 16 -1287 36 18 minecraft:oak_slab[waterlogged=true,type=bottom]
fill -1304 36 19 -1293 36 21 minecraft:oak_slab[waterlogged=true,type=bottom]
tag @e[scores={Stage=43},type=!minecraft:player] add dead
data merge block -1291 50 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_8/play"}}'}
setblock -1291 51 -1 minecraft:redstone_block