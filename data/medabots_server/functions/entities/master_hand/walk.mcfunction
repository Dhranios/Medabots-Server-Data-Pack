scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add walk_start
teleport @s[scores={Time=1}] ~ ~2 ~
execute if entity @s[scores={Time=2}] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ^-1 ^ ^ ~ ~

tag @s[scores={Time=19}] remove walk_start
tag @s[scores={Time=19}] add walk
execute if entity @s[scores={Time=20..24}] positioned ^1 ^-2 ^0.4 if entity @e[tag=target,limit=1,distance=..2] run tag @s add has_target
execute if entity @s[scores={Time=20..24}] positioned ^1 ^ ^0.4 if entity @e[tag=target,limit=1,distance=..2] run tag @s add has_target
execute if entity @s[scores={Time=24},tag=!has_target] unless block ^ ^-4 ^1 minecraft:air run playsound medabots_server:entity.master_hand.finger_walk hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=20..24},tag=!has_target] unless block ^ ^-4 ^1 minecraft:air if block ^ ^ ^3 minecraft:air run teleport @s ^ ^ ^0.4
execute if entity @s[scores={Time=24},tag=!has_target] if block ^ ^-4 ^1 minecraft:air run tag @s add walk_stop
execute if entity @s[scores={Time=24},tag=!has_target] unless block ^ ^ ^3 minecraft:air run tag @s add walk_stop
scoreboard players set @s[scores={Time=24},tag=!has_target,tag=!walk_stop] Time 19

tag @s[scores={Time=25},tag=!has_target] remove walk
execute if entity @s[scores={Time=25..29},tag=!has_target] run teleport @s ~ ~-0.4 ~
execute if entity @s[scores={Time=29}] rotated ~ 0 run teleport @s ^1 ^ ^
tag @s[scores={Time=30},tag=!has_target] add idle
tag @s[scores={Time=30},tag=!has_target] remove walk_stop
tag @s[scores={Time=30},tag=!has_target] remove attack_walk
scoreboard players set @s[scores={Time=30},tag=!has_target] Time 0

tag @s[scores={Time=25},tag=has_target] remove walk
tag @s[scores={Time=25},tag=has_target] add walk_kick
execute if entity @s[scores={Time=26},tag=has_target] run playsound medabots_server:entity.master_hand.finger_kick hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^-2 ^0.4 run effect give @e[tag=target,limit=1,distance=..2] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^ ^0.4 run effect give @e[tag=target,limit=1,distance=..2] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^-2 ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air if block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-6
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^ ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air if block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-6
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^-2 ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air unless block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-5
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^ ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air unless block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-5
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^-2 ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air unless block ^ ^ ^-5 minecraft:air run teleport @s ^ ^ ^-4
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^ ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air unless block ^ ^ ^-5 minecraft:air run teleport @s ^ ^ ^-4
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^-2 ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air unless block ^ ^ ^-4 minecraft:air run teleport @s ^ ^ ^-3
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^ ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air unless block ^ ^ ^-4 minecraft:air run teleport @s ^ ^ ^-3
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^-2 ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air unless block ^ ^ ^-3 minecraft:air run teleport @s ^ ^ ^-2
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^ ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air unless block ^ ^ ^-3 minecraft:air run teleport @s ^ ^ ^-2
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^-2 ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air unless block ^ ^ ^-2 minecraft:air run teleport @s ^ ^ ^-1
execute if entity @s[scores={Time=26},tag=has_target] positioned ^1 ^ ^0.4 as @e[tag=target,limit=1,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=master_hand,limit=1,scores={Time=26}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air unless block ^ ^ ^-2 minecraft:air run teleport @s ^ ^ ^-1
execute if entity @s[scores={Time=28..29},tag=has_target] run teleport @s ~ ~-1 ~
execute if entity @s[scores={Time=29}] rotated ~ 0 run teleport @s ^1 ^ ^
tag @s[scores={Time=35}] add idle
tag @s[scores={Time=35}] remove walk_kick
tag @s[scores={Time=35}] remove has_target
tag @s[scores={Time=35}] remove attack_walk
scoreboard players set @s[scores={Time=35}] Time 0