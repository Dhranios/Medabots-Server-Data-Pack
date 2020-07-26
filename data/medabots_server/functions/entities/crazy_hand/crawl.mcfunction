scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add crawl
teleport @s[scores={Time=1..2}] ~ ~1 ~
execute if entity @s[scores={Time=3}] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

teleport @s[scores={Time=22}] ~ ~-1 ~

execute if entity @s[scores={Time=34}] positioned ^ ^-2 ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air if block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-6
execute if entity @s[scores={Time=34}] positioned ^ ^ ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air if block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-6
execute if entity @s[scores={Time=34}] positioned ^ ^-2 ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air unless block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-5
execute if entity @s[scores={Time=34}] positioned ^ ^ ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air unless block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-5
execute if entity @s[scores={Time=34}] positioned ^ ^-2 ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air unless block ^ ^ ^-5 minecraft:air run teleport @s ^ ^ ^-4
execute if entity @s[scores={Time=34}] positioned ^ ^ ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air unless block ^ ^ ^-5 minecraft:air run teleport @s ^ ^ ^-4
execute if entity @s[scores={Time=34}] positioned ^ ^-2 ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air unless block ^ ^ ^-4 minecraft:air run teleport @s ^ ^ ^-3
execute if entity @s[scores={Time=34}] positioned ^ ^ ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air unless block ^ ^ ^-4 minecraft:air run teleport @s ^ ^ ^-3
execute if entity @s[scores={Time=34}] positioned ^ ^-2 ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air unless block ^ ^ ^-3 minecraft:air run teleport @s ^ ^ ^-2
execute if entity @s[scores={Time=34}] positioned ^ ^ ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air unless block ^ ^ ^-3 minecraft:air run teleport @s ^ ^ ^-2
execute if entity @s[scores={Time=34}] positioned ^ ^-2 ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air unless block ^ ^ ^-2 minecraft:air run teleport @s ^ ^ ^-1
execute if entity @s[scores={Time=34}] positioned ^ ^ ^0.4 as @e[tag=potential_target,distance=..2] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=34}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air unless block ^ ^ ^-2 minecraft:air run teleport @s ^ ^ ^-1
execute if entity @s[scores={Time=34,Sound=0}] unless block ^ ^-2 ^1 minecraft:air run playsound medabots_server:entity.crazy_hand.scratch hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=34,Sound=0}] unless block ^ ^-2 ^1 minecraft:air run scoreboard players set @s Sound 10
execute if entity @s[scores={Time=34}] unless block ^ ^-2 ^1 minecraft:air if block ^ ^ ^3 minecraft:air run teleport @s ^ ^ ^0.4
execute if entity @s[scores={Time=34}] if block ^ ^-2 ^1 minecraft:air run tag @s add crawl_stop
execute if entity @s[scores={Time=34}] unless block ^ ^ ^3 minecraft:air run tag @s add crawl_stop
scoreboard players set @s[scores={Time=34},tag=!crawl_stop] Time 33

tag @s[scores={Time=35},tag=crawl_stop] remove crawl
execute if entity @s[scores={Time=34}] positioned ^ ^-2 ^0.4 run effect give @e[tag=potential_target,distance=..2] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=34}] positioned ^ ^ ^0.4 run effect give @e[tag=potential_target,distance=..2] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=35}] run teleport @s ~ ~1 ~
execute if entity @s[scores={Time=47..49}] run teleport @s ~ ~-1 ~
tag @s[scores={Time=49}] add idle
tag @s[scores={Time=49}] remove crawl_stop
tag @s[scores={Time=49}] remove attack_crawl
scoreboard players set @s[scores={Time=49}] Time 0