scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add poke

execute at @s[scores={Time=5..45}] run teleport @s ^-1 ^ ^
data modify entity @s[scores={Time=5..45}] Pos[1] set from entity @e[tag=target,limit=1] Pos[1]
execute if entity @s[scores={Time=5..45}] at @e[tag=target,limit=1] if entity @s[distance=3.5..] at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ~ ~1 ~ run teleport @s ^ ^ ^1 ~ ~
execute if entity @s[scores={Time=5..45}] at @e[tag=target,limit=1] if entity @s[distance=2.5..3.5] at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ~ ~1 ~ run teleport @s ^ ^ ^ ~ ~
execute if entity @s[scores={Time=5..45}] at @e[tag=target,limit=1] if entity @s[distance=..2.5] at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ~ ~1 ~ run teleport @s ^ ^ ^-1 ~ ~
execute at @s[scores={Time=5..45}] run teleport @s ^1 ^ ^

execute if entity @s[scores={Time=61..65}] rotated ~ 45 run teleport @s ^ ^ ^0.5
execute if entity @s[scores={Time=65}] positioned ^-1 ^-2 ^1 run effect give @e[tag=target,limit=1,distance=..3.5] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=65}] run playsound medabots_server:entity.crazy_hand.poke hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=66..70}] rotated ~ 45 run teleport @s ^ ^ ^-0.5
execute if entity @s[scores={Time=71..75}] rotated ~ 45 run teleport @s ^ ^ ^0.5
execute if entity @s[scores={Time=75}] positioned ^-1 ^-2 ^1 run effect give @e[tag=target,limit=1,distance=..3.5] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=75}] run playsound medabots_server:entity.crazy_hand.poke hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=76..80}] rotated ~ 45 run teleport @s ^ ^ ^-0.5
execute if entity @s[scores={Time=81..85}] rotated ~ 45 run teleport @s ^ ^ ^0.5
execute if entity @s[scores={Time=85}] positioned ^-1 ^-2 ^1 run effect give @e[tag=target,limit=1,distance=..3.5] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=85}] run playsound medabots_server:entity.crazy_hand.poke hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=85}] positioned ^-1 ^ ^1 as @e[tag=target,limit=1,distance=..3.5] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=85}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air if block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-6
execute if entity @s[scores={Time=85}] positioned ^-1 ^ ^1 as @e[tag=target,limit=1,distance=..3.5] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=85}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air if block ^ ^ ^-5 minecraft:air unless block ^ ^ ^-6 minecraft:air run teleport @s ^ ^ ^-5
execute if entity @s[scores={Time=85}] positioned ^-1 ^ ^1 as @e[tag=target,limit=1,distance=..3.5] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=85}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air if block ^ ^ ^-4 minecraft:air unless block ^ ^ ^-5 minecraft:air run teleport @s ^ ^ ^-4
execute if entity @s[scores={Time=85}] positioned ^-1 ^ ^1 as @e[tag=target,limit=1,distance=..3.5] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=85}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air if block ^ ^ ^-3 minecraft:air unless block ^ ^ ^-4 minecraft:air run teleport @s ^ ^ ^-3
execute if entity @s[scores={Time=85}] positioned ^-1 ^ ^1 as @e[tag=target,limit=1,distance=..3.5] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=85}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air unless block ^ ^ ^-3 minecraft:air run teleport @s ^ ^ ^-2
execute if entity @s[scores={Time=85}] positioned ^-1 ^ ^1 as @e[tag=target,limit=1,distance=..3.5] at @s rotated as @e[type=minecraft:ghast,tag=crazy_hand,limit=1,scores={Time=85}] facing ^ ^-2 ^-2 if block ^ ^ ^-1 minecraft:air unless block ^ ^ ^-2 minecraft:air run teleport @s ^ ^ ^-1
execute if entity @s[scores={Time=86..90}] rotated ~ 45 run teleport @s ^ ^ ^-0.5

tag @s[scores={Time=100}] add idle
tag @s[scores={Time=100}] remove poke
tag @s[scores={Time=100}] remove attack_poke
scoreboard players set @s[scores={Time=100}] Time 0