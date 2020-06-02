execute if block ^ ^ ^0.4 #medabots_server:topman_pathables unless block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-1 ^0.4 minecraft:bubble_column unless block ^ ^-1 ^0.4 minecraft:water unless block ^ ^-1 ^0.4 minecraft:lava run tag @s add can_move
execute if block ^ ^ ^0.4 #medabots_server:topman_pathables if block ^ ^-1 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:air unless block ^ ^-2 ^0.4 minecraft:water unless block ^ ^-2 ^0.4 minecraft:bubble_column unless block ^ ^-2 ^0.4 minecraft:lava run tag @s add can_move

execute unless block ^ ^ ^0.4 #medabots_server:topman_pathables if block ^ ^1 ^0.4 minecraft:air if block ^ ^1 ^ minecraft:air run tag @s add can_move

execute if block ^ ^-1 ^0.4 minecraft:water if block ^ ^-2 ^0.4 minecraft:water positioned ^ ^-1 ^0.4 if entity @e[tag=raft,type=minecraft:area_effect_cloud,distance=..0.7] run tag @s add can_move
execute if block ^ ^-1 ^0.4 minecraft:bubble_column if block ^ ^-2 ^0.4 minecraft:bubble_column positioned ^ ^-1 ^0.4 if entity @e[tag=raft,type=minecraft:area_effect_cloud,distance=..0.7] run tag @s add can_move

execute at @s positioned ~-0.5 ~-1 ~-0.5 if entity @e[tag=medabot,dx=0,dy=1,dz=0] run tag @s remove can_move