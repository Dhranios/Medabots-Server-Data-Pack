execute at @s run tag @e[distance=..0.4,tag=bomb,tag=!action_floor] add dead
tag @e[distance=..0.4,tag=bomb,tag=!action_floor] add dead
execute at @s run teleport @e[distance=..0.4,tag=bomb,tag=!action_floor] ~ -1000 ~
teleport @s ~ ~ ~
teleport @e[distance=..0.4,tag=bomb,tag=!action_floor] ~ -1000 ~
teleport @s[tag=bomb,tag=!action_floor] ~ -1000 ~