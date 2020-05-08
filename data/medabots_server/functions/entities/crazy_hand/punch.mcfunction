scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=2}] add punch

teleport @s[scores={Time=1..3}] ~ ~2 ~
execute if entity @s[scores={Time=4..50}] facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ~-1 0 ~-1 unless entity @e[tag=target,limit=1,dx=1,dz=1,dy=255] positioned as @s run teleport @s ^ ^ ^0.4 ~ 0

teleport @s[scores={Time=59..60}] ~ ~-3 ~
execute if entity @s[scores={Time=59..61}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=59..60}] as @e[tag=potential_target,distance=..3] positioned as @s if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air if block ~ ~-3 ~ minecraft:air run teleport @s ~ ~-3 ~
execute at @s[scores={Time=60}] run particle minecraft:explosion ~-0.25 ~-0.25 ~-0.25 0.5 0.5 0.5 0 10
execute if entity @s[scores={Time=60}] run playsound medabots_server:entity.crazy_hand.power_punch hostile @a ~ ~-3 ~ 1
execute if entity @s[scores={Time=61}] as @e[tag=potential_target,distance=..3] at @s facing entity @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=61}] feet facing ^ ^-3 ^3 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air run teleport @s ^ ^ ^-3
execute if entity @s[scores={Time=61}] as @e[tag=potential_target,distance=..3] at @s facing entity @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=61}] feet facing ^ ^-3 ^3 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air unless block ^ ^ ^-3 minecraft:air run teleport @s ^ ^ ^-2
execute if entity @s[scores={Time=61}] as @e[tag=potential_target,distance=..3] at @s facing entity @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=61}] feet facing ^ ^-3 ^3 if block ^ ^ ^-1 minecraft:air unless block ^ ^ ^-2 minecraft:air run teleport @s ^ ^ ^-1

teleport @s[scores={Time=80}] ~ ~1 ~
execute if entity @s[scores={Time=87}] run playsound medabots_server:entity.crazy_hand.hard_hit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=97}] run playsound medabots_server:entity.crazy_hand.hard_hit hostile @a ~ ~ ~ 1
teleport @s[scores={Time=110}] ~ ~-1 ~

tag @s[scores={Time=110}] add idle
tag @s[scores={Time=110}] remove punch
tag @s[scores={Time=110}] remove has_target
tag @s[scores={Time=110}] remove attack_punch
scoreboard players set @s[scores={Time=110}] Time 0