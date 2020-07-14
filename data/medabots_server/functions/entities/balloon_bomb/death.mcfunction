execute at @s run tag @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] add dead
tag @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] add dead
execute at @s run teleport @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] ~ -1000 ~
teleport @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] ~ -1000 ~
teleport @s ~ -1000 ~
execute if entity @s[scores={ActionFloorNr=0..},tag=!burst] run function medabots_server:blocks/action_floor/reenable_spawning