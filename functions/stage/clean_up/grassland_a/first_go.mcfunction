setblock -1518 46 -131 minecraft:air
setblock -1517 46 -132 minecraft:air
setblock -1516 46 -132 minecraft:air
setblock -1519 46 -135 minecraft:air
setblock -1519 46 -139 minecraft:air
setblock -1518 46 -140 minecraft:air
setblock -1520 46 -140 minecraft:air
setblock -1519 46 -141 minecraft:air
setblock -1526 46 -136 minecraft:air
setblock -1525 46 -137 minecraft:air
setblock -1527 46 -137 minecraft:air
setblock -1526 46 -138 minecraft:air
setblock -1524 46 -143 minecraft:air
setblock -1530 46 -141 minecraft:air
setblock -1529 46 -142 minecraft:air
setblock -1531 46 -142 minecraft:air
setblock -1530 46 -143 minecraft:air
setblock -1535 46 -122 minecraft:air
setblock -1533 46 -125 minecraft:air
setblock -1532 46 -129 minecraft:air
setblock -1556 46 -125 minecraft:air
setblock -1565 46 -126 minecraft:air
setblock -1562 46 -132 minecraft:air
setblock -1567 46 -137 minecraft:air
setblock -1554 46 -142 minecraft:air
setblock -1563 46 -146 minecraft:air
setblock -1543 46 -149 minecraft:air
setblock -1530 46 -151 minecraft:air
setblock -1511 46 -147 minecraft:air
setblock -1511 46 -145 minecraft:air
setblock -1510 46 -146 minecraft:air
setblock -1509 46 -147 minecraft:air
setblock -1509 46 -145 minecraft:air
setblock -1516 46 -157 minecraft:air
setblock -1513 46 -167 minecraft:air
setblock -1522 46 -172 minecraft:air
setblock -1524 46 -177 minecraft:air
setblock -1534 46 -175 minecraft:air
setblock -1539 46 -169 minecraft:air
setblock -1542 46 -173 minecraft:air
setblock -1565 46 -174 minecraft:air
setblock -1565 46 -173 minecraft:air
setblock -1565 46 -172 minecraft:air
setblock -1565 46 -171 minecraft:air
setblock -1566 46 -172 minecraft:air
fill -1517 45 -128 -1516 48 -128 minecraft:air
fill -1540 45 -127 -1540 48 -126 minecraft:air
fill -1548 45 -157 -1548 48 -156 minecraft:air
fill -1535 45 -158 -1535 48 -157 minecraft:air
fill -1524 45 -160 -1524 48 -159 minecraft:air
fill -1514 45 -162 -1513 48 -162 minecraft:air
fill -1528 45 -171 -1528 48 -172 minecraft:air
fill -1547 45 -172 -1547 48 -173 minecraft:air
fill -1548 45 -172 -1548 48 -173 minecraft:air
fill -1549 45 -172 -1549 48 -173 minecraft:air
fill -1559 45 -123 -1559 48 -123 minecraft:air
fill -1564 45 -128 -1564 48 -128 minecraft:air
fill -1558 45 -130 -1558 48 -130 minecraft:air
fill -1566 45 -134 -1566 48 -134 minecraft:air
fill -1556 45 -137 -1556 48 -137 minecraft:air
fill -1561 45 -137 -1561 48 -137 minecraft:air
fill -1565 45 -142 -1565 48 -142 minecraft:air
fill -1559 45 -143 -1559 48 -143 minecraft:air
fill -1514 45 -167 -1514 48 -167 minecraft:air
fill -1522 45 -171 -1522 48 -171 minecraft:air
setblock -1516 44 -123 minecraft:grass_block
setblock -1516 48 -123 minecraft:air
setblock -1551 44 -171 minecraft:grass_block
fill -1551 45 -171 -1551 48 -171 minecraft:air
fill -1570 45 -180 -1507 45 -117 minecraft:air replace minecraft:chest
fill -1570 45 -180 -1507 45 -117 minecraft:air replace minecraft:stone_slab
fill -1570 44 -180 -1507 44 -117 minecraft:grass_block replace minecraft:dirt
bossbar set medabots_server:grassland_a/time players
tag @e[scores={Stage=1},type=!minecraft:player] add dead
data merge block -1540 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_a/play"}}'}
setblock -1540 53 -182 minecraft:redstone_block