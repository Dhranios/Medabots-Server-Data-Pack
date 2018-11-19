setblock -1692 45 -243 minecraft:air
setblock -1691 45 -243 minecraft:air
setblock -1686 45 -239 minecraft:air
setblock -1685 45 -235 minecraft:air
setblock -1680 45 -237 minecraft:air
setblock -1677 45 -235 minecraft:air
setblock -1685 45 -228 minecraft:air
setblock -1706 45 -232 minecraft:air
setblock -1698 45 -222 minecraft:air
setblock -1698 45 -221 minecraft:air
setblock -1697 45 -222 minecraft:air
setblock -1697 45 -221 minecraft:air
setblock -1711 45 -220 minecraft:air
setblock -1748 45 -238 minecraft:air
setblock -1730 45 -218 minecraft:air
setblock -1725 45 -227 minecraft:air
setblock -1721 45 -227 minecraft:air
setblock -1719 45 -226 minecraft:air
setblock -1720 45 -224 minecraft:air
setblock -1718 45 -224 minecraft:air
setblock -1719 45 -202 minecraft:air
setblock -1729 45 -209 minecraft:air
setblock -1729 45 -205 minecraft:air
setblock -1730 45 -204 minecraft:air
setblock -1728 45 -204 minecraft:air
setblock -1729 45 -203 minecraft:air
setblock -1746 45 -209 minecraft:air
setblock -1750 45 -202 minecraft:air
setblock -1755 45 -208 minecraft:air
setblock -1756 45 -203 minecraft:air
setblock -1755 45 -191 minecraft:air
setblock -1755 45 -190 minecraft:air
setblock -1754 45 -191 minecraft:air
setblock -1754 45 -190 minecraft:air
setblock -1732 45 -196 minecraft:air
setblock -1732 45 -189 minecraft:air
setblock -1728 45 -196 minecraft:air
setblock -1717 45 -189 minecraft:air
setblock -1717 45 -195 minecraft:air
setblock -1697 45 -194 minecraft:air
setblock -1693 45 -193 minecraft:air
setblock -1699 45 -187 minecraft:air
setblock -1686 45 -194 minecraft:air
setblock -1686 45 -193 minecraft:air
setblock -1685 45 -194 minecraft:air
setblock -1685 45 -193 minecraft:air
setblock -1681 45 -194 minecraft:air
setblock -1680 45 -194 minecraft:air
setblock -1681 45 -193 minecraft:air
setblock -1680 45 -193 minecraft:air
setblock -1680 45 -188 minecraft:air
setblock -1734 45 -230 minecraft:air
setblock -1735 45 -229 minecraft:air
setblock -1732 45 -229 minecraft:air
fill -1683 44 -221 -1684 47 -221 minecraft:air
fill -1703 44 -218 -1704 47 -218 minecraft:air
fill -1709 42 -223 -1710 47 -223 minecraft:air
fill -1711 42 -222 -1711 47 -222 minecraft:air
fill -1716 44 -209 -1716 47 -208 minecraft:air
fill -1719 44 -192 -1719 47 -192 minecraft:air
fill -1715 44 -193 -1715 47 -193 minecraft:air
fill -1684 44 -199 -1683 47 -199 minecraft:air
fill -1724 44 -193 -1724 47 -193 minecraft:air
fill -1722 44 -192 -1722 47 -192 minecraft:air
fill -1719 44 -196 -1719 47 -193 minecraft:air
fill -1715 44 -192 -1715 47 -188 minecraft:air
fill -1716 43 -239 -1716 47 -240 minecraft:air
fill -1737 44 -222 -1737 47 -221 minecraft:air
fill -1741 44 -206 -1741 47 -207 minecraft:air
fill -1752 44 -213 -1751 47 -213 minecraft:air
fill -1741 44 -193 -1741 47 -192 minecraft:air
fill -1739 44 -193 -1739 47 -192 minecraft:air
fill -1737 44 -193 -1737 47 -192 minecraft:air
fill -1735 44 -193 -1735 47 -192 minecraft:air
fill -1712 44 -209 -1712 47 -208 minecraft:air
fill -1710 44 -209 -1710 47 -208 minecraft:air
setblock -1701 43 -240 minecraft:packed_ice
setblock -1701 47 -240 minecraft:air
fill -1764 44 -247 -1573 44 -184 minecraft:air replace minecraft:chest
fill -1764 44 -247 -1672 44 -184 minecraft:air replace minecraft:stone_slab
fill -1764 44 -247 -1672 44 -184 minecraft:air replace minecraft:comparator
fill -1764 43 -247 -1672 43 -184 minecraft:water replace minecraft:oak_planks
tag @a[scores={Stage=18},tag=enemy_medabot] remove enemy_medabot
scoreboard players set @a[scores={Stage=18}] Music 0
scoreboard players set @a[scores={Stage=18}] MusicType 1
scoreboard players set @a[scores={Stage=18}] Battle 0
teleport @a[scores={Stage=18}] -1704 50 -221 -180 0
tag @e[scores={Stage=18},type=!minecraft:player] add dead
data merge block -1705 51 -244 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/iceberg_a/play\"}}"}
setblock -1705 52 -245 minecraft:redstone_block
scoreboard players set @s MusicType 1