setblock -1644 46 -402 minecraft:air
setblock -1641 46 -409 minecraft:air
setblock -1647 46 -406 minecraft:air
setblock -1653 46 -402 minecraft:air
setblock -1651 46 -405 minecraft:air
setblock -1653 46 -405 minecraft:air
setblock -1653 46 -406 minecraft:air
setblock -1653 46 -407 minecraft:air
setblock -1661 46 -406 minecraft:air
setblock -1654 46 -433 minecraft:air
setblock -1654 46 -437 minecraft:air
setblock -1659 46 -426 minecraft:air
setblock -1662 46 -432 minecraft:air
setblock -1663 46 -431 minecraft:air
setblock -1663 46 -430 minecraft:air
setblock -1629 46 -421 minecraft:air
setblock -1629 46 -420 minecraft:air
setblock -1629 46 -413 minecraft:air
setblock -1627 46 -413 minecraft:air
setblock -1624 46 -422 minecraft:air
setblock -1622 46 -422 minecraft:air
setblock -1619 46 -424 minecraft:air
setblock -1616 46 -424 minecraft:air
setblock -1613 46 -426 minecraft:air
setblock -1610 46 -429 minecraft:air
setblock -1607 46 -429 minecraft:air
setblock -1612 46 -435 minecraft:air
setblock -1613 46 -435 minecraft:air
setblock -1589 46 -428 minecraft:air
setblock -1589 46 -427 minecraft:air
setblock -1595 46 -448 minecraft:air
setblock -1594 46 -448 minecraft:air
setblock -1595 46 -447 minecraft:air
setblock -1594 46 -447 minecraft:air
setblock -1596 46 -474 minecraft:air
setblock -1579 46 -475 minecraft:air
setblock -1629 46 -474 minecraft:air
setblock -1630 46 -474 minecraft:air
setblock -1629 46 -475 minecraft:air
setblock -1630 46 -475 minecraft:air
setblock -1631 46 -475 minecraft:air
setblock -1648 44 -430 minecraft:grass_block
setblock -1653 44 -436 minecraft:grass_block
setblock -1655 44 -432 minecraft:grass_block
setblock -1599 44 -451 minecraft:grass_block
setblock -1599 44 -447 minecraft:grass_block
fill -1648 45 -396 -1648 48 -395 minecraft:air
fill -1628 45 -411 -1627 48 -411 minecraft:air
fill -1590 45 -408 -1590 48 -408 minecraft:air
fill -1586 45 -405 -1586 48 -405 minecraft:air
fill -1584 45 -411 -1584 48 -411 minecraft:air
fill -1580 45 -412 -1580 48 -412 minecraft:air
fill -1579 45 -406 -1579 48 -406 minecraft:air
fill -1590 45 -412 -1591 48 -412 minecraft:air
fill -1579 45 -417 -1578 48 -417 minecraft:air
fill -1601 45 -468 -1601 48 -469 minecraft:air
fill -1606 45 -457 -1607 48 -457 minecraft:air
fill -1616 45 -464 -1616 48 -465 minecraft:air
fill -1635 45 -451 -1635 48 -452 minecraft:air
setblock -1658 44 -392 minecraft:grass_block
setblock -1658 48 -392 minecraft:air
fill -1666 45 -477 -1573 45 -386 minecraft:grass_block replace minecraft:dirt
fill -1666 45 -477 -1573 45 -386 minecraft:air replace minecraft:comparator
fill -1666 45 -477 -1573 45 -386 minecraft:air replace minecraft:stone_slab
fill -1666 45 -477 -1573 45 -386 minecraft:air replace minecraft:chest
fill -1666 44 -477 -1573 44 -386 minecraft:air replace minecraft:oak_planks
fill -1666 42 -477 -1573 42 -386 minecraft:coarse_dirt replace minecraft:magma_block
bossbar set medabots_server:jungle_b/time players
bossbar set medabots_server:jungle_b/robattle players
scoreboard players set @a[scores={Stage=12}] Music 0
scoreboard players set @a[scores={Stage=12}] MusicType 1
scoreboard players set @a[scores={Stage=12}] Battle 0
teleport @a[scores={Stage=12}] -1620 51 -431 -180 0
tag @e[scores={Stage=12},type=!minecraft:player] add dead
data merge block -1621 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_b/play"}}'}
setblock -1621 53 -479 minecraft:redstone_block