fill -1858 44 -247 -1765 44 -153 minecraft:air replace minecraft:barrier
bossbar set medabots_server:grassland_e/time players
tag @e[scores={Stage=52},type=!minecraft:player] add dead
data merge block -1813 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_e/play"}}'}
setblock -1813 53 -249 minecraft:redstone_block