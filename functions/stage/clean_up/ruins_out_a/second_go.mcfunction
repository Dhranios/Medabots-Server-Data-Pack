setblock -1559 46 -284 minecraft:air
setblock -1549 46 -284 minecraft:air
setblock -1543 46 -256 minecraft:air
setblock -1541 46 -256 minecraft:air
setblock -1539 46 -256 minecraft:air
setblock -1537 46 -256 minecraft:air
setblock -1542 46 -264 minecraft:air
setblock -1544 46 -273 minecraft:air
setblock -1540 46 -273 minecraft:air
setblock -1534 46 -266 minecraft:air
setblock -1532 46 -270 minecraft:air
setblock -1534 46 -276 minecraft:air
setblock -1522 46 -280 minecraft:air
setblock -1522 46 -281 minecraft:air
setblock -1523 46 -280 minecraft:air
setblock -1523 46 -281 minecraft:air
setblock -1511 46 -293 minecraft:air
setblock -1511 46 -298 minecraft:air
setblock -1508 46 -290 minecraft:air
setblock -1508 46 -301 minecraft:air
setblock -1529 46 -290 minecraft:air
setblock -1533 46 -287 minecraft:air
setblock -1544 46 -286 minecraft:air
setblock -1543 46 -300 minecraft:air
setblock -1541 46 -293 minecraft:air
setblock -1544 46 -293 minecraft:air
setblock -1543 46 -309 minecraft:air
setblock -1542 46 -310 minecraft:air
setblock -1541 46 -309 minecraft:air
setblock -1567 46 -265 minecraft:air
setblock -1592 46 -309 minecraft:air
setblock -1593 46 -310 minecraft:air
setblock -1594 46 -309 minecraft:air
setblock -1576 46 -284 minecraft:air
setblock -1586 46 -284 minecraft:air
setblock -1575 46 -262 minecraft:air
setblock -1578 46 -262 minecraft:air
setblock -1581 46 -257 minecraft:air
setblock -1586 46 -258 minecraft:air
setblock -1592 46 -256 minecraft:air
setblock -1594 46 -260 minecraft:air
fill -1575 45 -261 -1575 48 -261 minecraft:air
fill -1574 45 -262 -1574 48 -262 minecraft:air
fill -1571 45 -264 -1569 48 -264 minecraft:air
fill -1566 45 -264 -1564 48 -264 minecraft:air
fill -1556 44 -273 -1556 48 -273 minecraft:air
fill -1554 43 -288 -1554 48 -288 minecraft:air
fill -1536 45 -312 -1536 48 -313 minecraft:air
fill -1594 44 -268 -1596 48 -268 minecraft:air
fill -1603 45 -299 -1603 48 -301 minecraft:air
fill -1610 45 -292 -1612 48 -292 minecraft:air
fill -1623 45 -300 -1622 48 -300 minecraft:air
fill -1612 45 -308 -1612 48 -308 minecraft:air
fill -1513 45 -296 -1513 48 -295 minecraft:air
fill -1514 45 -296 -1514 48 -295 minecraft:air
fill -1568 45 -310 -1567 48 -310 minecraft:air
fill -1568 45 -264 -1567 48 -264 minecraft:air
fill -1611 45 -308 -1610 48 -308 minecraft:air
fill -1624 45 -284 -1624 48 -285 minecraft:air
fill -1634 45 -315 -1507 45 -251 minecraft:air replace minecraft:chest
fill -1634 45 -315 -1507 45 -251 minecraft:air replace minecraft:comparator
fill -1634 44 -315 -1507 44 -251 minecraft:water replace minecraft:oak_planks
fill -1634 44 -315 -1507 44 -251 minecraft:grass_block replace minecraft:dirt
fill -1634 44 -315 -1507 44 -251 minecraft:grass_block replace minecraft:moving_piston
setblock -1568 44 -256 minecraft:grass_block
setblock -1568 48 -256 minecraft:air
setblock -1567 44 -312 minecraft:grass_block
fill -1567 45 -312 -1567 48 -312 minecraft:air
bossbar set medabots_server:ruins_out_a/time players
tag @a[scores={Stage=21},tag=enemy_medabot] remove enemy_medabot
scoreboard players set @a[scores={Stage=21}] Music 0
scoreboard players set @a[scores={Stage=21}] MusicType 1
scoreboard players set @a[scores={Stage=21}] Battle 0
teleport @a[scores={Stage=21}] -1570 51 -284 -180 0
tag @e[scores={Stage=21},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=21}] Stage
data merge block -1571 52 -315 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/ruins_out_a/play\"}}"}
setblock -1571 53 -317 minecraft:redstone_block
scoreboard players set @s MusicType 1