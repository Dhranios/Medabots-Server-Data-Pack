execute at @s run tag @e[distance=..0.4,tag=raft] add dead
tag @e[distance=..0.4,tag=raft] add dead
execute at @s run teleport @e[distance=..0.4,tag=raft] ~ -1000 ~
teleport @s ~ ~ ~
teleport @e[distance=..0.4,tag=raft] ~ -1000 ~
teleport @s[tag=dead] ~ -1000 ~