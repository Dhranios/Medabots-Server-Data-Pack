execute at @s run tag @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] add dead
tag @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] add dead
execute at @s run teleport @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] ~ -1000 ~
teleport @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] ~ -1000 ~
teleport @s ~ -1000 ~
execute unless entity @e[distance=..0.7,tag=bomb] run function medabots_server:blocks/action_floor/reenable_spawning