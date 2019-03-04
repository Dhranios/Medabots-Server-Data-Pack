setblock -1577 46 -326 minecraft:air
setblock -1579 46 -324 minecraft:air
setblock -1578 46 -323 minecraft:air
setblock -1579 46 -322 minecraft:air
setblock -1577 46 -322 minecraft:air
setblock -1616 46 -329 minecraft:air
setblock -1625 46 -325 minecraft:air
setblock -1631 46 -326 minecraft:air
setblock -1602 46 -345 minecraft:air
setblock -1601 46 -345 minecraft:air
setblock -1601 46 -346 minecraft:air
setblock -1602 46 -346 minecraft:air
setblock -1580 46 -347 minecraft:air
setblock -1576 46 -354 minecraft:air
setblock -1576 46 -360 minecraft:air
setblock -1578 46 -362 minecraft:air
setblock -1576 46 -363 minecraft:air
setblock -1578 46 -365 minecraft:air
setblock -1576 46 -366 minecraft:air
setblock -1578 46 -368 minecraft:air
setblock -1583 46 -379 minecraft:air
setblock -1613 46 -363 minecraft:air
setblock -1614 46 -363 minecraft:air
setblock -1614 46 -364 minecraft:air
setblock -1615 46 -364 minecraft:air
setblock -1608 46 -337 minecraft:air
setblock -1609 46 -339 minecraft:air
setblock -1612 46 -340 minecraft:air
setblock -1609 46 -344 minecraft:air
setblock -1611 46 -345 minecraft:air
setblock -1612 46 -343 minecraft:air
setblock -1614 46 -342 minecraft:air
setblock -1616 46 -338 minecraft:air
setblock -1621 46 -344 minecraft:air
setblock -1620 46 -337 minecraft:air
setblock -1629 46 -336 minecraft:air
setblock -1633 46 -340 minecraft:air
setblock -1634 46 -339 minecraft:air
setblock -1626 46 -355 minecraft:air
setblock -1626 46 -354 minecraft:air
setblock -1625 46 -355 minecraft:air
setblock -1625 46 -354 minecraft:air
setblock -1630 46 -359 minecraft:air
setblock -1634 46 -358 minecraft:air
setblock -1633 46 -361 minecraft:air
setblock -1629 46 -362 minecraft:air
setblock -1631 46 -362 minecraft:air
setblock -1633 46 -363 minecraft:air
setblock -1631 46 -365 minecraft:air
setblock -1622 46 -373 minecraft:air
setblock -1623 46 -375 minecraft:air
setblock -1625 46 -376 minecraft:air
setblock -1623 46 -378 minecraft:air
setblock -1625 46 -379 minecraft:air
setblock -1623 46 -380 minecraft:air
fill -1627 45 -327 -1627 48 -324 minecraft:air
fill -1592 45 -340 -1592 48 -340 minecraft:air
fill -1592 45 -345 -1592 48 -345 minecraft:air
fill -1591 45 -342 -1591 48 -342 minecraft:air
fill -1591 45 -347 -1591 48 -347 minecraft:air
fill -1589 45 -343 -1589 48 -343 minecraft:air
fill -1589 45 -349 -1589 48 -349 minecraft:air
fill -1588 45 -341 -1588 48 -341 minecraft:air
fill -1588 45 -346 -1588 48 -346 minecraft:air
fill -1587 45 -339 -1587 48 -339 minecraft:air
fill -1586 45 -342 -1586 48 -342 minecraft:air
fill -1586 45 -348 -1586 48 -348 minecraft:air
fill -1575 45 -358 -1575 48 -358 minecraft:air
fill -1578 45 -358 -1578 48 -358 minecraft:air
fill -1590 45 -333 -1591 48 -333 minecraft:air
fill -1614 45 -332 -1615 48 -332 minecraft:air
fill -1595 45 -344 -1595 48 -343 minecraft:air
fill -1583 45 -343 -1583 48 -342 minecraft:air
fill -1577 45 -358 -1576 48 -358 minecraft:air
fill -1622 45 -359 -1622 48 -358 minecraft:air
fill -1615 45 -372 -1615 48 -371 minecraft:air
setblock -1579 44 -373 minecraft:cobblestone
setblock -1585 44 -375 minecraft:cobblestone
setblock -1625 44 -368 minecraft:cobblestone
setblock -1605 44 -323 minecraft:cobblestone
setblock -1605 48 -323 minecraft:air
fill -1636 45 -382 -1573 45 -319 minecraft:air replace minecraft:chest
fill -1636 44 -382 -1573 44 -319 minecraft:water replace minecraft:oak_planks
fill -1636 42 -382 -1573 42 -319 minecraft:cobblestone replace minecraft:magma_block
fill -1636 44 -382 -1573 44 -319 minecraft:grass_block replace minecraft:dirt
bossbar set medabots_server:rock_b/time players
scoreboard players set @a[scores={Stage=32}] Music 0
scoreboard players set @a[scores={Stage=32}] MusicType 1
scoreboard players set @a[scores={Stage=32}] Battle 0
tag @e[scores={Stage=32},type=!minecraft:player] add dead
data merge block -1605 52 -382 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/grassland_b/play\"}}"}
setblock -1605 53 -384 minecraft:redstone_block