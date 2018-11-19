setblock -1517 46 -189 minecraft:air
setblock -1518 46 -188 minecraft:air
setblock -1517 46 -188 minecraft:air
setblock -1517 46 -187 minecraft:air
setblock -1523 46 -187 minecraft:air
setblock -1524 46 -187 minecraft:air
setblock -1537 46 -188 minecraft:air
setblock -1536 46 -187 minecraft:air
setblock -1538 46 -187 minecraft:air
setblock -1537 46 -186 minecraft:air
setblock -1549 46 -187 minecraft:air
setblock -1548 46 -186 minecraft:air
setblock -1550 46 -186 minecraft:air
setblock -1547 46 -207 minecraft:air
setblock -1547 46 -205 minecraft:air
setblock -1548 46 -208 minecraft:air
setblock -1548 46 -206 minecraft:air
setblock -1549 46 -207 minecraft:air
setblock -1549 46 -205 minecraft:air
setblock -1550 46 -208 minecraft:air
setblock -1550 46 -206 minecraft:air
setblock -1551 46 -207 minecraft:air
setblock -1551 46 -205 minecraft:air
setblock -1556 46 -193 minecraft:air
setblock -1565 46 -239 minecraft:air
setblock -1562 46 -235 minecraft:air
setblock -1564 46 -231 minecraft:air
setblock -1567 46 -236 minecraft:air
setblock -1512 46 -230 minecraft:air
setblock -1511 46 -227 minecraft:air
setblock -1513 46 -225 minecraft:air
setblock -1509 46 -225 minecraft:air
setblock -1514 46 -223 minecraft:air
setblock -1510 46 -223 minecraft:air
fill -1535 45 -190 -1535 48 -190 minecraft:air
fill -1541 45 -192 -1541 48 -192 minecraft:air
fill -1546 45 -189 -1546 48 -189 minecraft:air
fill -1560 45 -209 -1559 48 -209 minecraft:air
fill -1533 45 -196 -1532 48 -196 minecraft:air
fill -1551 45 -194 -1550 48 -194 minecraft:air
fill -1534 45 -207 -1533 48 -207 minecraft:air
fill -1569 45 -207 -1568 48 -207 minecraft:air
setblock -1539 44 -220 minecraft:grass_block
setblock -1550 44 -227 minecraft:cobblestone
setblock -1549 44 -238 minecraft:cobblestone
setblock -1530 44 -225 minecraft:cobblestone
setblock -1509 44 -196 minecraft:cobblestone
setblock -1509 48 -196 minecraft:air
setblock -1538 44 -229 minecraft:cobblestone
setblock -1538 48 -229 minecraft:air
fill -1570 45 -247 -1507 45 -184 minecraft:air replace minecraft:stone_slab
fill -1570 45 -247 -1507 45 -184 minecraft:air replace minecraft:chest
fill -1570 45 -247 -1507 45 -184 minecraft:air replace minecraft:comparator
fill -1570 44 -247 -1507 44 -184 minecraft:water replace minecraft:oak_planks
clone -1570 43 -247 -1507 43 -184 -1570 44 -247 filtered minecraft:oak_planks
tag @e[scores={Stage=11},type=!minecraft:player] add dead
data merge block -1540 52 -247 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/seashore_a/play\"}}"}
setblock -1540 53 -249 minecraft:redstone_block
scoreboard players set @s MusicType 1