setblock -1534 46 -324 minecraft:air
setblock -1546 46 -324 minecraft:air
setblock -1554 46 -321 minecraft:air
setblock -1548 46 -341 minecraft:air
setblock -1546 46 -341 minecraft:air
setblock -1553 46 -329 minecraft:air
setblock -1553 46 -327 minecraft:air
setblock -1554 46 -328 minecraft:air
setblock -1552 46 -328 minecraft:air
setblock -1560 46 -332 minecraft:air
setblock -1560 46 -330 minecraft:air
setblock -1561 46 -331 minecraft:air
setblock -1559 46 -331 minecraft:air
setblock -1564 46 -337 minecraft:air
setblock -1564 46 -335 minecraft:air
setblock -1565 46 -336 minecraft:air
setblock -1563 46 -336 minecraft:air
setblock -1558 46 -346 minecraft:air
setblock -1553 46 -347 minecraft:air
setblock -1562 46 -349 minecraft:air
setblock -1566 46 -366 minecraft:air
setblock -1524 46 -348 minecraft:air
setblock -1522 46 -352 minecraft:air
setblock -1518 46 -365 minecraft:air
setblock -1517 46 -363 minecraft:air
setblock -1516 46 -368 minecraft:air
setblock -1515 46 -365 minecraft:air
setblock -1514 46 -363 minecraft:air
setblock -1543 46 -373 minecraft:air
setblock -1552 46 -409 minecraft:air
setblock -1553 46 -408 minecraft:air
setblock -1553 46 -409 minecraft:air
setblock -1553 46 -410 minecraft:air
setblock -1554 46 -409 minecraft:air
setblock -1519 46 -384 minecraft:air
setblock -1522 46 -384 minecraft:air
setblock -1521 46 -382 minecraft:air
setblock -1525 46 -382 minecraft:air
setblock -1523 46 -381 minecraft:air
setblock -1521 46 -379 minecraft:air
setblock -1525 46 -379 minecraft:air
setblock -1523 46 -377 minecraft:air
fill -1543 45 -326 -1543 48 -326 minecraft:air
fill -1554 44 -322 -1554 48 -322 minecraft:air
fill -1558 45 -341 -1558 48 -341 minecraft:air
fill -1554 45 -368 -1554 48 -368 minecraft:air
fill -1523 45 -340 -1523 48 -340 minecraft:air
fill -1522 45 -375 -1522 48 -375 minecraft:air
fill -1521 45 -376 -1520 48 -376 minecraft:air
fill -1519 45 -377 -1519 48 -377 minecraft:air
fill -1518 45 -378 -1518 48 -378 minecraft:air
fill -1552 45 -374 -1552 48 -374 minecraft:air
fill -1558 45 -375 -1558 48 -375 minecraft:air
fill -1555 45 -376 -1555 48 -376 minecraft:air
fill -1560 45 -378 -1560 48 -378 minecraft:air
fill -1557 45 -380 -1557 48 -380 minecraft:air
fill -1538 45 -404 -1538 48 -404 minecraft:air
fill -1543 45 -327 -1543 48 -328 minecraft:air
fill -1560 45 -341 -1559 48 -341 minecraft:air
fill -1556 45 -368 -1555 48 -368 minecraft:air
fill -1521 45 -340 -1522 48 -340 minecraft:air
fill -1544 45 -363 -1544 48 -360 minecraft:air
fill -1559 45 -386 -1558 48 -385 minecraft:air
fill -1538 45 -403 -1538 48 -402 minecraft:air
fill -1520 45 -389 -1521 48 -389 minecraft:air
setblock -1538 44 -326 minecraft:grass_block
setblock -1538 48 -326 minecraft:air
fill -1570 45 -414 -1508 45 -319 minecraft:air replace minecraft:stone_slab
fill -1570 45 -414 -1508 45 -319 minecraft:air replace minecraft:chest
fill -1570 44 -414 -1508 44 -319 minecraft:water replace minecraft:oak_planks
fill -1570 44 -414 -1508 44 -319 minecraft:grass_block replace minecraft:dirt
bossbar set medabots_server:grassland_b/time players
scoreboard players set @a[scores={Stage=10}] Music 0
scoreboard players set @a[scores={Stage=10}] MusicType 1
scoreboard players set @a[scores={Stage=10}] Battle 0
tag @e[scores={Stage=10},type=!minecraft:player] add dead
data merge block -1541 52 -414 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/grassland_b/play\"}}"}
setblock -1541 53 -416 minecraft:redstone_block