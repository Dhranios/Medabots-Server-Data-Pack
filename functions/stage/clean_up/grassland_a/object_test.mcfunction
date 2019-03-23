setblock -1515 46 -168 minecraft:air
fill -1531 45 -159 -1531 48 -159 minecraft:air
fill -1562 45 -139 -1561 48 -139 minecraft:air
fill -1563 45 -142 -1563 48 -141 minecraft:air
fill -1561 45 -143 -1560 48 -143 minecraft:air
fill -1559 45 -141 -1559 48 -140 minecraft:air
setblock -1519 44 -171 minecraft:grass_block
setblock -1519 48 -171 minecraft:air
setblock -1516 44 -174 minecraft:grass_block
fill -1516 45 -174 -1516 48 -174 minecraft:air
fill -1570 45 -180 -1507 45 -117 minecraft:air replace minecraft:chest
fill -1570 45 -180 -1507 45 -117 minecraft:air replace minecraft:stone_slab
fill -1570 44 -180 -1507 44 -117 minecraft:grass_block replace minecraft:dirt
tag @e[scores={Stage=1},type=!minecraft:player] add dead
data merge block -1540 52 -180 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/grassland_a/play\"}}"}
setblock -1540 53 -182 minecraft:redstone_block