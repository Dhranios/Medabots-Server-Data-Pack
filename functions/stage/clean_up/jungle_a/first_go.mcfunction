setblock -1699 46 -124 minecraft:air
setblock -1696 46 -124 minecraft:air
setblock -1689 46 -132 minecraft:air
setblock -1688 46 -129 minecraft:air
setblock -1687 46 -129 minecraft:air
setblock -1686 46 -133 minecraft:air
setblock -1683 46 -131 minecraft:air
setblock -1664 46 -133 minecraft:air
setblock -1669 46 -143 minecraft:air
setblock -1645 46 -176 minecraft:air
setblock -1703 46 -144 minecraft:air
setblock -1701 46 -143 minecraft:air
setblock -1702 46 -142 minecraft:air
setblock -1701 46 -140 minecraft:air
setblock -1649 46 -176 minecraft:air
setblock -1685 44 -139 minecraft:grass_block
setblock -1678 44 -140 minecraft:coarse_dirt
setblock -1685 44 -145 minecraft:grass_block
setblock -1683 44 -140 minecraft:grass_block
setblock -1685 44 -148 minecraft:coarse_dirt
fill -1682 45 -129 -1682 48 -129 minecraft:air
fill -1680 45 -129 -1681 48 -129 minecraft:air
fill -1662 45 -124 -1662 48 -123 minecraft:air
fill -1661 45 -134 -1661 48 -135 minecraft:air
fill -1673 45 -141 -1673 48 -142 minecraft:air
fill -1645 45 -152 -1644 48 -152 minecraft:air
fill -1699 45 -145 -1699 48 -146 minecraft:air
fill -1686 45 -173 -1687 48 -174 minecraft:air
fill -1646 43 -157 -1646 46 -157 minecraft:air
fill -1648 43 -158 -1648 46 -158 minecraft:air
fill -1647 43 -160 -1647 46 -160 minecraft:air
fill -1649 43 -161 -1649 46 -161 minecraft:air
fill -1646 43 -163 -1645 46 -163 minecraft:air
fill -1645 43 -166 -1645 46 -166 minecraft:air
fill -1643 43 -168 -1643 46 -168 minecraft:air
fill -1644 43 -171 -1644 46 -171 minecraft:air
fill -1643 43 -174 -1643 46 -174 minecraft:air
setblock -1698 44 -122 minecraft:coarse_dirt
setblock -1698 48 -122 minecraft:air
fill -1642 45 -116 -1705 45 -179 minecraft:air replace minecraft:stone_slab
fill -1642 45 -116 -1705 45 -179 minecraft:air replace minecraft:chest
fill -1642 44 -116 -1705 44 -179 minecraft:water replace minecraft:oak_planks
bossbar set medabots_server:jungle_a/time players
bossbar set medabots_server:jungle_a/robattle players
scoreboard players set @a[scores={Stage=3}] Music 0
scoreboard players set @a[scores={Stage=3}] MusicType 1
scoreboard players set @a[scores={Stage=3}] Battle 0
teleport @a[scores={Stage=3}] -1673 51 -148 -180 0
tag @e[scores={Stage=3},type=!minecraft:player] add dead
data merge block -1674 52 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_a/play"}}'}
setblock -1674 53 -181 minecraft:redstone_block