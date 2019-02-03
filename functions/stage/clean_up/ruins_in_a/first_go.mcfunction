setblock -1651 45 -283 minecraft:air
setblock -1648 45 -279 minecraft:air
setblock -1649 45 -278 minecraft:air
setblock -1652 45 -276 minecraft:air
setblock -1649 45 -274 minecraft:air
setblock -1653 45 -322 minecraft:air
setblock -1658 45 -261 minecraft:air
setblock -1659 45 -262 minecraft:air
setblock -1660 45 -262 minecraft:air
setblock -1661 45 -263 minecraft:air
setblock -1701 45 -273 minecraft:air
setblock -1699 45 -273 minecraft:air
setblock -1711 45 -286 minecraft:air
setblock -1724 45 -286 minecraft:air
setblock -1711 45 -289 minecraft:air
setblock -1724 45 -289 minecraft:air
setblock -1720 45 -310 minecraft:air
setblock -1720 45 -305 minecraft:air
setblock -1713 45 -305 minecraft:air
setblock -1713 45 -310 minecraft:air
setblock -1707 45 -309 minecraft:air
setblock -1705 45 -310 minecraft:air
fill -1661 44 -272 -1661 47 -272 minecraft:air
fill -1653 44 -284 -1653 47 -284 minecraft:air
fill -1647 44 -283 -1647 47 -283 minecraft:air
fill -1649 44 -282 -1649 47 -282 minecraft:air
fill -1651 44 -281 -1651 47 -281 minecraft:air
fill -1652 44 -280 -1652 47 -280 minecraft:air
fill -1650 44 -279 -1650 47 -279 minecraft:air
fill -1653 44 -278 -1653 47 -278 minecraft:air
fill -1647 44 -277 -1647 47 -277 minecraft:air
fill -1649 44 -276 -1649 47 -275 minecraft:air
fill -1651 44 -274 -1651 47 -274 minecraft:air
fill -1652 44 -321 -1652 47 -322 minecraft:air
fill -1648 44 -258 -1648 47 -259 minecraft:air
fill -1660 44 -255 -1659 47 -255 minecraft:air
fill -1651 44 -287 -1650 47 -287 minecraft:air
fill -1651 44 -272 -1650 47 -272 minecraft:air
fill -1648 44 -304 -1648 47 -303 minecraft:air
fill -1653 44 -304 -1653 47 -303 minecraft:air
fill -1648 44 -296 -1648 47 -295 minecraft:air
fill -1653 44 -296 -1653 47 -295 minecraft:air
fill -1640 44 -306 -1639 47 -306 minecraft:air
fill -1662 44 -306 -1661 47 -306 minecraft:air
fill -1649 44 -322 -1649 47 -321 minecraft:air
fill -1651 44 -326 -1650 47 -326 minecraft:air
fill -1707 44 -255 -1707 47 -254 minecraft:air
fill -1716 44 -255 -1716 47 -254 minecraft:air
fill -1726 44 -267 -1725 47 -267 minecraft:air
fill -1713 44 -263 -1713 47 -262 minecraft:air
fill -1712 44 -273 -1711 47 -273 minecraft:air
fill -1724 44 -273 -1723 47 -273 minecraft:air
fill -1712 44 -287 -1711 47 -287 minecraft:air
fill -1724 44 -287 -1723 47 -287 minecraft:air
fill -1717 44 -299 -1716 47 -299 minecraft:air
fill -1717 44 -317 -1716 47 -317 minecraft:air
fill -1717 44 -320 -1716 47 -320 minecraft:air
fill -1683 44 -275 -1682 47 -274 minecraft:air
setblock -1683 43 -254 minecraft:polished_granite
setblock -1683 47 -254 minecraft:air
setblock -1682 43 -276 minecraft:polished_granite
fill -1682 44 -276 -1682 47 -276 minecraft:air
fill -1729 44 -344 -1640 44 -252 minecraft:air replace minecraft:comparator
fill -1729 44 -344 -1640 44 -252 minecraft:air replace minecraft:chest
fill -1729 43 -344 -1640 43 -252 minecraft:water replace minecraft:oak_planks
fill -1651 46 -286 -1650 46 -286 minecraft:air
setblock -1651 46 -287 minecraft:wall_torch[facing=east]
setblock -1650 46 -287 minecraft:wall_torch[facing=west]
setblock -1662 47 -336 minecraft:air
setblock -1662 46 -336 minecraft:wall_torch[facing=east]
bossbar set medabots_server:ruins_in_a/time players
scoreboard players set @a[scores={Stage=23}] Music 0
scoreboard players set @a[scores={Stage=23}] MusicType 1
scoreboard players set @a[scores={Stage=23}] Battle 0
tag @e[scores={Stage=23},type=!minecraft:player] add dead
data merge block -1683 51 -277 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/ruins_in_a/play\"}}"}
setblock -1685 52 -277 minecraft:redstone_block