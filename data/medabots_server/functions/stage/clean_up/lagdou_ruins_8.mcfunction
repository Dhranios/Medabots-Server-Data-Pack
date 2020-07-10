execute as @e[x=0,y=44,z=0,dx=59,dy=13,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=43}] run scoreboard players set @s Stage 43
fill -1260 41 60 -1319 46 -2 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1260 41 60 -1319 46 -2 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1260 41 60 -1319 46 -2 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1260 41 60 -1319 46 -2 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
setblock 31 48 37 minecraft:torch
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
scoreboard players set @a[scores={Stage=43},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=43},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=43},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=43},tag=medabot,distance=0.1..] 29 58 31 -180 0
scoreboard players set @s[scores={Stage=43,State=0}] Music 0
scoreboard players set @s[scores={Stage=43,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=43,State=0}] State 0
teleport @s[scores={Stage=43,State=0}] 29 58 31 -180 0
tag @e[scores={Stage=43},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=43},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=43},distance=0.1..] Stage
data merge block 28 59 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_8/play"}}'}
setblock 28 60 1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}