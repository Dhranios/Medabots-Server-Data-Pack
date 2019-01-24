execute at @s run tag @e[distance=..0.4,tag=ice_block] add dead
tag @e[distance=..0.4,tag=ice_block] add dead
execute at @s run teleport @e[distance=..0.4,tag=ice_block] ~ -1000 ~
teleport @s ~ ~ ~
teleport @e[distance=..0.4,tag=ice_block] ~ -1000 ~
fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:black_stained_glass
teleport @s[tag=dead] ~ -1000 ~