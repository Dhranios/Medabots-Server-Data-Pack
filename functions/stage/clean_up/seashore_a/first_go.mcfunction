setblock -1517 46 -189 minecraft:air
setblock -1518 46 -188 minecraft:air
setblock -1517 46 -188 minecraft:air
setblock -1517 46 -187 minecraft:air
setblock -1523 46 -187 minecraft:air
setblock -1524 46 -187 minecraft:air
setblock -1537 46 -188 minecraft:air
setblock -1538 46 -187 minecraft:air
setblock -1548 46 -186 minecraft:air
setblock -1549 46 -187 minecraft:air
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
setblock -1512 46 -230 minecraft:air
setblock -1511 46 -227 minecraft:air
setblock -1513 46 -225 minecraft:air
setblock -1509 46 -225 minecraft:air
setblock -1514 46 -223 minecraft:air
setblock -1510 46 -223 minecraft:air
setblock -1538 46 -240 minecraft:air
setblock -1565 46 -238 minecraft:air
setblock -1567 46 -236 minecraft:air
setblock -1562 46 -233 minecraft:air
setblock -1564 46 -231 minecraft:air
setblock -1539 44 -220 minecraft:grass_block
setblock -1550 44 -227 minecraft:cobblestone
setblock -1549 44 -238 minecraft:cobblestone
setblock -1530 44 -225 minecraft:cobblestone
fill -1514 45 -215 -1514 48 -215 minecraft:air
fill -1535 45 -190 -1535 48 -190 minecraft:air
fill -1541 45 -192 -1541 48 -192 minecraft:air
fill -1546 45 -189 -1546 48 -189 minecraft:air
fill -1541 45 -222 -1541 48 -222 minecraft:air
fill -1538 45 -222 -1538 48 -222 minecraft:air
fill -1538 43 -221 -1538 48 -221 minecraft:air
fill -1541 43 -221 -1541 48 -221 minecraft:air
fill -1514 45 -217 -1514 48 -216 minecraft:air
fill -1533 45 -196 -1532 48 -196 minecraft:air
fill -1551 45 -194 -1550 48 -194 minecraft:air
fill -1534 45 -207 -1533 48 -207 minecraft:air
fill -1540 45 -222 -1539 48 -222 minecraft:air
setblock -1509 44 -196 minecraft:cobblestone
setblock -1509 48 -196 minecraft:air
fill -1570 45 -247 -1507 45 -184 minecraft:air replace minecraft:stone_slab
fill -1570 45 -247 -1507 45 -184 minecraft:air replace minecraft:chest
fill -1570 45 -247 -1507 45 -184 minecraft:air replace minecraft:comparator
fill -1570 44 -247 -1507 44 -184 minecraft:water replace minecraft:oak_planks
clone -1570 43 -247 -1507 43 -184 -1570 44 -247 filtered minecraft:oak_planks
bossbar set medabots_server:seashore_a/time players
bossbar set medabots_server:seashore_a/robattle players
scoreboard players set @a[scores={Stage=4}] Music 0
scoreboard players set @a[scores={Stage=4}] MusicType 1
scoreboard players set @a[scores={Stage=4}] Battle 0
teleport @a[scores={Stage=4}] -1539 51 -216 -180 0
tag @e[scores={Stage=4},type=!minecraft:player] add dead
data merge block -1540 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/seashore_a/play"}}'}
setblock -1540 53 -249 minecraft:redstone_block