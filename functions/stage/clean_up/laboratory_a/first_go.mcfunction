setblock -1772 45 -270 minecraft:air
setblock -1773 45 -271 minecraft:air
setblock -1780 45 -271 minecraft:air
setblock -1751 45 -257 minecraft:air
setblock -1752 45 -256 minecraft:air
setblock -1753 45 -255 minecraft:air
setblock -1755 45 -257 minecraft:air
setblock -1756 45 -256 minecraft:air
setblock -1755 45 -255 minecraft:air
setblock -1756 45 -254 minecraft:air
setblock -1754 45 -253 minecraft:air
setblock -1753 45 -252 minecraft:air
setblock -1751 45 -254 minecraft:air
setblock -1750 45 -254 minecraft:air
setblock -1749 45 -253 minecraft:air
setblock -1750 45 -252 minecraft:air
setblock -1754 45 -282 minecraft:air
setblock -1754 45 -287 minecraft:air
setblock -1750 45 -287 minecraft:air
setblock -1741 45 -271 minecraft:air
setblock -1740 45 -271 minecraft:air
setblock -1741 45 -270 minecraft:air
setblock -1740 45 -270 minecraft:air
setblock -1760 45 -281 minecraft:air
setblock -1760 45 -280 minecraft:air
setblock -1762 45 -298 minecraft:air
setblock -1761 45 -298 minecraft:air
setblock -1795 45 -313 minecraft:air
setblock -1795 45 -316 minecraft:air
setblock -1795 45 -319 minecraft:air
setblock -1798 45 -310 minecraft:air
setblock -1798 45 -313 minecraft:air
setblock -1798 45 -316 minecraft:air
setblock -1747 45 -259 minecraft:air
setblock -1801 45 -310 minecraft:air
setblock -1801 45 -313 minecraft:air
setblock -1801 45 -316 minecraft:air
setblock -1801 45 -319 minecraft:air
setblock -1804 45 -310 minecraft:air
setblock -1804 45 -313 minecraft:air
setblock -1804 45 -316 minecraft:air
setblock -1804 45 -319 minecraft:air
setblock -1807 45 -310 minecraft:air
setblock -1807 45 -313 minecraft:air
setblock -1807 45 -316 minecraft:air
setblock -1807 45 -319 minecraft:air
setblock -1810 45 -310 minecraft:air
setblock -1810 45 -313 minecraft:air
setblock -1810 45 -316 minecraft:air
setblock -1810 45 -319 minecraft:air
setblock -1777 45 -317 minecraft:air
setblock -1773 45 -320 minecraft:air
fill -1776 44 -265 -1776 47 -265 minecraft:air
fill -1778 44 -267 -1778 47 -267 minecraft:air
fill -1780 44 -269 -1780 47 -269 minecraft:air
fill -1779 44 -273 -1779 47 -273 minecraft:air
fill -1777 44 -275 -1777 47 -275 minecraft:air
fill -1775 44 -277 -1775 47 -277 minecraft:air
fill -1769 44 -276 -1769 47 -276 minecraft:air
fill -1767 44 -274 -1767 47 -274 minecraft:air
fill -1765 44 -272 -1765 47 -272 minecraft:air
fill -1766 44 -268 -1766 47 -268 minecraft:air
fill -1768 44 -266 -1768 47 -266 minecraft:air
fill -1770 44 -264 -1770 47 -264 minecraft:air
fill -1773 44 -292 -1772 47 -292 minecraft:air
fill -1787 44 -290 -1786 47 -290 minecraft:air
fill -1796 44 -282 -1796 47 -282 minecraft:air
fill -1797 44 -287 -1797 47 -287 minecraft:air
fill -1799 44 -284 -1799 47 -284 minecraft:air
fill -1801 44 -281 -1801 47 -281 minecraft:air
fill -1803 44 -287 -1803 47 -287 minecraft:air
fill -1796 44 -307 -1795 47 -307 minecraft:air
fill -1795 44 -310 -1795 47 -310 minecraft:air
fill -1762 44 -304 -1762 47 -303 minecraft:air
fill -1763 44 -271 -1763 47 -270 minecraft:air
fill -1761 44 -271 -1761 47 -270 minecraft:air
fill -1754 44 -277 -1753 47 -277 minecraft:air
fill -1752 44 -262 -1753 47 -262 minecraft:air
fill -1754 44 -285 -1753 47 -285 minecraft:air
fill -1746 44 -271 -1746 47 -270 minecraft:air
fill -1773 44 -278 -1772 47 -278 minecraft:air
fill -1788 44 -289 -1788 47 -288 minecraft:air
fill -1800 44 -272 -1799 47 -272 minecraft:air
fill -1793 44 -314 -1793 47 -313 minecraft:air
fill -1773 44 -315 -1772 47 -315 minecraft:air
fill -1773 44 -313 -1772 47 -313 minecraft:air
setblock -1773 43 -255 minecraft:polished_andesite
setblock -1773 47 -255 minecraft:air
fill -1812 44 -322 -1733 44 -250 minecraft:air replace minecraft:chest
fill -1812 44 -322 -1733 44 -250 minecraft:air replace minecraft:comparator
tag @a[scores={Stage=26},tag=enemy_medabot] remove enemy_medabot
scoreboard players set @a[scores={Stage=26}] Music 0
scoreboard players set @a[scores={Stage=26}] MusicType 1
scoreboard players set @a[scores={Stage=26}] Battle 0
teleport @a[scores={Stage=26}] -1772 50 -285 -180 0
tag @e[scores={Stage=26},type=!minecraft:player] add dead
data merge block -1773 51 -321 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/laboratory_a/play\"}}"}
setblock -1773 52 -323 minecraft:redstone_block
scoreboard players set @s MusicType 1