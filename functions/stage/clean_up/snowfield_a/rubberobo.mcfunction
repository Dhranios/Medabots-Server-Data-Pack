setblock -1592 46 -244 minecraft:air
setblock -1588 46 -243 minecraft:air
setblock -1587 46 -241 minecraft:air
setblock -1596 46 -242 minecraft:air
setblock -1594 46 -240 minecraft:air
setblock -1598 46 -240 minecraft:air
setblock -1596 46 -235 minecraft:air
setblock -1579 46 -235 minecraft:air
setblock -1577 46 -234 minecraft:air
setblock -1577 46 -236 minecraft:air
setblock -1575 46 -238 minecraft:air
setblock -1576 46 -201 minecraft:air
setblock -1610 46 -211 minecraft:air
setblock -1615 46 -209 minecraft:air
setblock -1610 46 -214 minecraft:air
setblock -1618 46 -216 minecraft:air
setblock -1620 46 -220 minecraft:air
setblock -1613 46 -223 minecraft:air
setblock -1644 46 -186 minecraft:air
setblock -1630 46 -192 minecraft:air
setblock -1626 46 -193 minecraft:air
setblock -1623 46 -190 minecraft:air
setblock -1611 46 -187 minecraft:air
setblock -1607 46 -188 minecraft:air
setblock -1603 46 -190 minecraft:air
setblock -1596 46 -190 minecraft:air
setblock -1594 46 -193 minecraft:air
setblock -1593 46 -189 minecraft:air
setblock -1592 46 -191 minecraft:air
setblock -1589 46 -191 minecraft:air
setblock -1590 46 -189 minecraft:air
setblock -1666 46 -210 minecraft:air
setblock -1664 46 -198 minecraft:air
setblock -1629 46 -243 minecraft:air
setblock -1629 46 -244 minecraft:air
setblock -1623 46 -242 minecraft:air
setblock -1623 46 -243 minecraft:air
setblock -1606 46 -245 minecraft:air
setblock -1605 46 -242 minecraft:air
setblock -1603 46 -241 minecraft:air
setblock -1603 46 -244 minecraft:air
fill -1652 45 -228 -1652 48 -228 minecraft:air
fill -1652 45 -231 -1652 48 -231 minecraft:air
fill -1598 45 -213 -1599 48 -213 minecraft:air
fill -1590 45 -207 -1591 48 -207 minecraft:air
fill -1652 45 -229 -1652 48 -230 minecraft:air
setblock -1594 44 -243 minecraft:packed_ice
setblock -1594 48 -243 minecraft:air
setblock -1660 44 -234 minecraft:packed_ice
fill -1660 45 -234 -1660 48 -234 minecraft:air
fill -1668 44 -247 -1573 44 -184 minecraft:water replace minecraft:oak_planks
fill -1668 45 -247 -1573 45 -184 minecraft:air replace minecraft:chest
fill -1668 45 -247 -1573 45 -184 minecraft:air replace minecraft:comparator
bossbar set medabots_server:snowfield_a/time players
tag @e[scores={Stage=5},type=!minecraft:player] add dead
data merge block -1621 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_a/play"}}'}
setblock -1621 53 -249 minecraft:redstone_block