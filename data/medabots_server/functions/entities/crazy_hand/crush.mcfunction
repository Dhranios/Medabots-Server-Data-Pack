scoreboard players add @s Time 1
effect give @s minecraft:resistance 1 9 true
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add crush

execute if entity @s[scores={Time=1}] run playsound medabots_server:entity.crazy_hand.background_punch_start hostile @a ~ ~ ~ 1
teleport @s[scores={Time=1..19}] ~ ~2 ~
execute at @s[scores={Time=20}] at @e[tag=target,limit=1] run teleport @s ~ ~ ~
execute store result entity @s[scores={Time=20}] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute at @s[scores={Time=20}] run teleport @s ^25 ^-20 ^ ~90 ~

execute if entity @s[scores={Time=21}] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ 0

execute if entity @s[scores={Time=21..50}] run effect give @e[tag=target,limit=1,distance=..3] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=51}] run effect give @e[tag=target,limit=1,distance=..3] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=21..30}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^-1 ^1 minecraft:air if block ^ ^-2 ^1 minecraft:air if block ^ ^-3 ^1 minecraft:air run teleport @s ^ ^2.5 ^0.8
execute if entity @s[scores={Time=31..40}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^0.8
execute if entity @s[scores={Time=41..50}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^-1 ^1 minecraft:air run teleport @s ^ ^-0.5 ^0.8
execute if entity @s[scores={Time=21..30}] run teleport @s ^ ^2.5 ^0.8
execute if entity @s[scores={Time=31..40}] run teleport @s ^ ^ ^0.8
execute if entity @s[scores={Time=41..50}] run teleport @s ^ ^-0.6 ^0.9
execute at @s[scores={Time=50}] run playsound medabots_server:entity.crazy_hand.fake_out_land hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=51}] as @e[tag=target,limit=1,distance=..3] at @s facing entity @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=61}] feet facing ^ ^-3 ^3 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air if block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-6
execute if entity @s[scores={Time=51}] as @e[tag=target,limit=1,distance=..3] at @s facing entity @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=61}] feet facing ^ ^-3 ^3 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air unless block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-5
execute if entity @s[scores={Time=51}] as @e[tag=target,limit=1,distance=..3] at @s facing entity @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=61}] feet facing ^ ^-3 ^3 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air unless block ^ ^ ^-5 minecraft:air run teleport @s ^ ^ ^-4
execute if entity @s[scores={Time=51}] as @e[tag=target,limit=1,distance=..3] at @s facing entity @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=61}] feet facing ^ ^-3 ^3 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air unless block ^ ^ ^-4 minecraft:air run teleport @s ^ ^ ^-3
execute if entity @s[scores={Time=51}] as @e[tag=target,limit=1,distance=..3] at @s facing entity @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=61}] feet facing ^ ^-3 ^3 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air unless block ^ ^ ^-3 minecraft:air run teleport @s ^ ^ ^-2
execute if entity @s[scores={Time=51}] as @e[tag=target,limit=1,distance=..3] at @s facing entity @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=61}] feet facing ^ ^-3 ^3 if block ^ ^ ^-1 minecraft:air unless block ^ ^ ^-2 minecraft:air run teleport @s ^ ^ ^-1
execute if entity @s[scores={Time=65..69}] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~0.2 ~ ~ ~

effect clear @s[scores={Time=70}] minecraft:resistance
tag @s[scores={Time=70}] add idle
tag @s[scores={Time=70}] remove crush
tag @s[scores={Time=70}] remove has_target
tag @s[scores={Time=70}] remove attack_crush
scoreboard players set @s[scores={Time=70}] Time 0