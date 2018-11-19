setblock -1654 46 -190 minecraft:air
setblock -1653 46 -188 minecraft:air
setblock -1647 46 -191 minecraft:air
setblock -1645 46 -189 minecraft:air
setblock -1645 46 -196 minecraft:air
setblock -1662 46 -196 minecraft:air
setblock -1664 46 -197 minecraft:air
setblock -1626 46 -221 minecraft:air
setblock -1631 46 -220 minecraft:air
setblock -1622 46 -215 minecraft:air
setblock -1621 46 -211 minecraft:air
setblock -1628 46 -208 minecraft:air
setblock -1598 46 -245 minecraft:air
setblock -1610 46 -240 minecraft:air
setblock -1615 46 -239 minecraft:air
setblock -1627 46 -245 minecraft:air
setblock -1638 46 -241 minecraft:air
setblock -1646 46 -241 minecraft:air
setblock -1648 46 -239 minecraft:air
setblock -1649 46 -241 minecraft:air
setblock -1652 46 -241 minecraft:air
setblock -1651 46 -243 minecraft:air
setblock -1577 46 -233 minecraft:air
setblock -1612 46 -187 minecraft:air
setblock -1618 46 -188 minecraft:air
setblock -1635 46 -186 minecraft:air
setblock -1636 46 -189 minecraft:air
setblock -1638 46 -190 minecraft:air
setblock -1649 46 -187 minecraft:air
setblock -1643 46 -191 minecraft:air
setblock -1664 46 -195 minecraft:air
setblock -1666 46 -193 minecraft:air
setblock -1665 46 -229 minecraft:air
setblock -1606 46 -241 minecraft:air
setblock -1618 46 -241 minecraft:air
setblock -1631 46 -217 minecraft:air
setblock -1633 46 -244 minecraft:air
setblock -1648 46 -243 minecraft:air
setblock -1575 46 -221 minecraft:air
setblock -1638 46 -187 minecraft:air
setblock -1612 46 -188 minecraft:air
setblock -1652 46 -240 minecraft:air
setblock -1651 46 -242 minecraft:air
setblock -1649 46 -240 minecraft:air
setblock -1648 46 -242 minecraft:air
setblock -1647 46 -238 minecraft:air
setblock -1645 46 -241 minecraft:air
setblock -1634 46 -243 minecraft:air
setblock -1629 46 -244 minecraft:air
setblock -1619 46 -241 minecraft:air
setblock -1615 46 -238 minecraft:air
setblock -1611 46 -239 minecraft:air
setblock -1607 46 -241 minecraft:air
setblock -1597 46 -245 minecraft:air
setblock -1626 46 -222 minecraft:air
setblock -1623 46 -215 minecraft:air
setblock -1618 46 -189 minecraft:air
setblock -1665 46 -230 minecraft:air
fill -1651 48 -224 -1649 45 -224 minecraft:air
fill -1643 48 -218 -1642 45 -218 minecraft:air
fill -1589 45 -203 -1589 48 -200 minecraft:air
fill -1581 45 -197 -1581 48 -197 minecraft:air
setblock -1647 48 -188 minecraft:air
fill -1618 43 -229 -1618 48 -230 minecraft:air
fill -1617 43 -231 -1613 48 -231 minecraft:air
fill -1610 48 -231 -1610 45 -231 minecraft:air
fill -1609 43 -232 -1609 48 -232 minecraft:air
fill -1608 48 -233 -1606 43 -233 minecraft:air
fill -1605 43 -232 -1605 48 -232 minecraft:air
fill -1604 43 -231 -1604 48 -222 minecraft:air
fill -1604 43 -219 -1604 48 -217 minecraft:air
fill -1605 43 -216 -1616 48 -216 minecraft:air
fill -1617 43 -217 -1617 48 -217 minecraft:air
fill -1618 43 -218 -1618 48 -218 minecraft:air
fill -1619 43 -219 -1619 48 -219 minecraft:air
fill -1620 43 -220 -1620 48 -224 minecraft:air
fill -1619 48 -225 -1619 43 -225 minecraft:air
fill -1618 45 -226 -1618 48 -226 minecraft:air
fill -1578 43 -211 -1588 48 -211 minecraft:air
fill -1589 43 -210 -1589 48 -204 minecraft:air
fill -1589 43 -204 -1589 44 -207 minecraft:water
fill -1589 45 -203 -1589 48 -203 minecraft:air
fill -1589 45 -200 -1589 48 -197 minecraft:air
fill -1590 43 -196 -1590 48 -195 minecraft:air
fill -1591 43 -194 -1591 48 -186 minecraft:air
fill -1618 45 -228 -1618 48 -227 minecraft:air
fill -1611 45 -230 -1612 48 -230 minecraft:air
fill -1604 45 -221 -1604 48 -220 minecraft:air
fill -1590 45 -202 -1590 48 -201 minecraft:air
fill -1668 45 -247 -1573 45 -184 minecraft:air replace minecraft:chest
fill -1668 45 -247 -1573 45 -184 minecraft:air replace minecraft:stone_slab
fill -1668 45 -247 -1573 45 -184 minecraft:air replace minecraft:comparator
fill -1668 44 -247 -1573 44 -184 minecraft:water replace minecraft:oak_planks
fill -1668 44 -247 -1573 44 -184 minecraft:packed_ice replace minecraft:moving_piston
setblock -1647 44 -188 minecraft:packed_ice
setblock -1581 44 -197 minecraft:packed_ice
setblock -1578 43 -223 minecraft:packed_ice
tag @a[scores={Stage=14..16},tag=enemy] remove enemy
scoreboard players set @a[scores={Stage=14..16}] Music 0
scoreboard players set @a[scores={Stage=14..16}] MusicType 1
scoreboard players set @a[scores={Stage=14..16}] Battle 0
teleport @a[scores={Stage=14..16}] -1620 51 -216 -180 0
tag @e[x=-1668,y=43,z=-247,dx=105,dy=6,dz=63,type=!minecraft:player] add dead
data merge block -1621 52 -247 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/snowfield_a/play\"}}"}
setblock -1621 53 -249 minecraft:redstone_block
scoreboard players set @s MusicType 1