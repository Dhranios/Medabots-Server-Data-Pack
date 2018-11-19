setblock -1592 46 -244 minecraft:air
setblock -1588 46 -243 minecraft:air
setblock -1596 46 -242 minecraft:air
setblock -1587 46 -241 minecraft:air
setblock -1598 46 -240 minecraft:air
setblock -1594 46 -240 minecraft:air
setblock -1596 46 -235 minecraft:air
setblock -1579 46 -235 minecraft:air
setblock -1577 46 -234 minecraft:air
setblock -1577 46 -236 minecraft:air
setblock -1575 46 -238 minecraft:air
setblock -1576 46 -201 minecraft:air
setblock -1610 46 -211 minecraft:air
setblock -1610 46 -214 minecraft:air
setblock -1615 46 -209 minecraft:air
setblock -1618 46 -216 minecraft:air
setblock -1620 46 -220 minecraft:air
setblock -1613 46 -223 minecraft:air
setblock -1644 46 -186 minecraft:air
setblock -1634 46 -190 minecraft:air
setblock -1630 46 -192 minecraft:air
setblock -1626 46 -193 minecraft:air
setblock -1622 46 -190 minecraft:air
setblock -1612 46 -187 minecraft:air
setblock -1607 46 -188 minecraft:air
setblock -1603 46 -190 minecraft:air
setblock -1596 46 -190 minecraft:air
setblock -1594 46 -193 minecraft:air
setblock -1593 46 -189 minecraft:air
setblock -1592 46 -191 minecraft:air
setblock -1590 46 -189 minecraft:air
setblock -1589 46 -191 minecraft:air
setblock -1666 46 -210 minecraft:air
setblock -1664 46 -198 minecraft:air
setblock -1629 46 -243 minecraft:air
setblock -1629 46 -244 minecraft:air
setblock -1623 46 -242 minecraft:air
setblock -1623 46 -243 minecraft:air
setblock -1603 46 -241 minecraft:air
setblock -1605 46 -242 minecraft:air
setblock -1603 46 -244 minecraft:air
setblock -1606 46 -245 minecraft:air
fill -1623 45 -205 -1623 48 -205 minecraft:air
fill -1622 43 -206 -1622 48 -206 minecraft:air
fill -1621 43 -207 -1621 48 -211 minecraft:air
fill -1622 43 -212 -1622 48 -212 minecraft:air
fill -1623 43 -213 -1623 48 -213 minecraft:air
fill -1624 43 -214 -1624 48 -214 minecraft:air
fill -1625 43 -215 -1636 48 -215 minecraft:air
fill -1637 43 -214 -1637 48 -212 minecraft:air
fill -1637 43 -209 -1637 48 -200 minecraft:air
fill -1636 43 -199 -1636 48 -199 minecraft:air
fill -1635 43 -198 -1633 48 -198 minecraft:air
fill -1632 43 -199 -1632 48 -199 minecraft:air
fill -1631 45 -200 -1631 48 -200 minecraft:air
fill -1628 43 -200 -1624 48 -200 minecraft:air
fill -1623 43 -201 -1623 48 -202 minecraft:air
fill -1663 43 -220 -1653 48 -220 minecraft:air
fill -1652 43 -221 -1652 48 -227 minecraft:air
fill -1652 45 -228 -1652 48 -228 minecraft:air
fill -1652 45 -231 -1652 48 -234 minecraft:air
fill -1651 43 -235 -1651 48 -236 minecraft:air
fill -1650 43 -237 -1650 48 -245 minecraft:air
fill -1652 43 -227 -1652 44 -224 minecraft:water
fill -1599 45 -213 -1598 48 -213 minecraft:air
fill -1591 45 -207 -1590 48 -207 minecraft:air
fill -1623 45 -203 -1623 48 -204 minecraft:air
fill -1630 45 -201 -1629 48 -201 minecraft:air
fill -1637 45 -210 -1637 48 -211 minecraft:air
fill -1651 45 -230 -1651 48 -229 minecraft:air
fill -1652 45 -229 -1652 48 -230 minecraft:air
setblock -1594 44 -243 minecraft:packed_ice
setblock -1594 48 -243 minecraft:air
fill -1668 44 -247 -1573 44 -184 minecraft:water replace minecraft:oak_planks
fill -1668 45 -247 -1573 45 -184 minecraft:air replace minecraft:chest
fill -1668 45 -247 -1573 45 -184 minecraft:air replace minecraft:comparator
tag @a[scores={Stage=14},tag=enemy_medabot] remove enemy_medabot
scoreboard players set @a[scores={Stage=14}] Music 0
scoreboard players set @a[scores={Stage=14}] MusicType 1
scoreboard players set @a[scores={Stage=14}] Battle 0
teleport @a[scores={Stage=14}] -1620 51 -216 -180 0
tag @e[scores={Stage=14},type=!minecraft:player] add dead
data merge block -1621 52 -247 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/snowfield_a/play\"}}"}
setblock -1621 53 -249 minecraft:redstone_block
scoreboard players set @s MusicType 1