fill -1211 45 -62 -1265 47 -137 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1211 45 -62 -1265 47 -137 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1211 45 -62 -1265 47 -137 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1211 45 -62 -1265 47 -137 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
tag @e[scores={Stage=41},type=!minecraft:player] add dead
data merge block -1237 52 -139 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_6/play"}}'}
setblock -1237 53 -141 minecraft:redstone_block