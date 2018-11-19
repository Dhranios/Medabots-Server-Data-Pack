setblock -1625 46 -132 minecraft:air
setblock -1624 46 -132 minecraft:air
setblock -1625 46 -131 minecraft:air
setblock -1624 46 -131 minecraft:air
setblock -1629 46 -130 minecraft:air
setblock -1628 46 -130 minecraft:air
setblock -1629 46 -129 minecraft:air
setblock -1628 46 -129 minecraft:air
setblock -1628 46 -122 minecraft:air
setblock -1627 46 -122 minecraft:air
setblock -1622 46 -124 minecraft:air
setblock -1628 46 -121 minecraft:air
setblock -1627 46 -121 minecraft:air
setblock -1605 46 -127 minecraft:air
setblock -1603 46 -123 minecraft:air
setblock -1593 46 -131 minecraft:air
setblock -1580 46 -140 minecraft:air
setblock -1583 46 -146 minecraft:air
setblock -1579 46 -150 minecraft:air
setblock -1575 46 -159 minecraft:air
setblock -1598 46 -156 minecraft:air
setblock -1580 46 -169 minecraft:air
setblock -1580 46 -170 minecraft:air
setblock -1583 46 -170 minecraft:air
setblock -1583 46 -172 minecraft:air
setblock -1584 46 -174 minecraft:air
setblock -1586 46 -171 minecraft:air
setblock -1587 46 -173 minecraft:air
setblock -1589 46 -176 minecraft:air
setblock -1602 46 -142 minecraft:air
setblock -1597 46 -151 minecraft:air
setblock -1612 46 -143 minecraft:air
setblock -1627 46 -139 minecraft:air
setblock -1631 46 -143 minecraft:air
setblock -1634 46 -146 minecraft:air
setblock -1634 46 -151 minecraft:air
setblock -1632 46 -151 minecraft:air
setblock -1632 46 -157 minecraft:air
setblock -1630 46 -159 minecraft:air
setblock -1630 46 -162 minecraft:air
setblock -1628 46 -154 minecraft:air
setblock -1629 46 -154 minecraft:air
setblock -1626 46 -177 minecraft:air
fill -1623 44 -125 -1623 44 -126 minecraft:cobblestone
setblock -1622 44 -126 minecraft:cobblestone
fill -1619 44 -125 -1619 44 -126 minecraft:cobblestone
fill -1609 44 -130 -1609 44 -131 minecraft:cobblestone
setblock -1610 44 -131 minecraft:cobblestone
fill -1595 44 -123 -1595 44 -124 minecraft:cobblestone
setblock -1590 44 -124 minecraft:cobblestone
setblock -1589 44 -131 minecraft:cobblestone
setblock -1591 44 -131 minecraft:cobblestone
setblock -1588 44 -144 minecraft:cobblestone
setblock -1591 44 -144 minecraft:cobblestone
setblock -1593 44 -142 minecraft:cobblestone
setblock -1597 44 -142 minecraft:cobblestone
fill -1615 44 -145 -1616 44 -145 minecraft:cobblestone
setblock -1619 44 -145 minecraft:cobblestone
fill -1625 44 -160 -1625 44 -159 minecraft:cobblestone
setblock -1622 44 -160 minecraft:cobblestone
setblock -1621 44 -163 minecraft:cobblestone
setblock -1621 44 -165 minecraft:cobblestone
fill -1605 45 -151 -1605 48 -151 minecraft:air
fill -1608 45 -154 -1608 48 -154 minecraft:air
fill -1612 45 -169 -1612 48 -169 minecraft:air
fill -1612 45 -175 -1612 48 -175 minecraft:air
fill -1609 45 -164 -1609 48 -164 minecraft:air
fill -1608 45 -173 -1608 48 -173 minecraft:air
fill -1606 45 -168 -1606 48 -168 minecraft:air
fill -1606 45 -176 -1606 48 -176 minecraft:air
fill -1604 45 -163 -1604 48 -163 minecraft:air
fill -1603 45 -173 -1603 48 -173 minecraft:air
fill -1601 45 -166 -1601 48 -166 minecraft:air
fill -1599 45 -174 -1599 48 -174 minecraft:air
setblock -1626 44 -127 minecraft:grass_block
setblock -1626 48 -127 minecraft:air
fill -1636 44 -180 -1573 44 -117 minecraft:water replace minecraft:oak_planks
fill -1636 44 -180 -1573 44 -117 minecraft:grass_block replace minecraft:dirt
fill -1636 45 -180 -1573 45 -117 minecraft:air replace minecraft:chest
tag @a[scores={Stage=5},tag=enemy_medabot] remove enemy_medabot
scoreboard players set @a[scores={Stage=5}] Music 0
scoreboard players set @a[scores={Stage=5}] MusicType 1
scoreboard players set @a[scores={Stage=5}] Battle 0
teleport @a[scores={Stage=5}] -1604 51 -151 -180 0
tag @e[scores={Stage=5},type=!minecraft:player] add dead
data merge block -1604 52 -180 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/rock_a/play\"}}"}
setblock -1604 53 -182 minecraft:redstone_block
scoreboard players set @s MusicType 1