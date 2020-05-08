scoreboard players add @s Time 1
execute if entity @s[scores={Time=21}] unless block ^ ^-1 ^2 minecraft:air if block ^ ^ ^6 minecraft:air if block ^ ^ ^5 minecraft:air if block ^ ^ ^4 minecraft:air if block ^ ^ ^3 minecraft:air if block ^ ^ ^2 minecraft:air if block ^ ^ ^1 minecraft:air run scoreboard players set @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add sweep

execute if entity @s[scores={Time=8}] run playsound medabots_server:entity.crazy_hand.swipe hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=8..14}] if block ^ ^ ^3 minecraft:air if block ^ ^ ^2 minecraft:air if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^1

execute if entity @s[scores={Time=8..14}] run effect give @e[tag=potential_target,distance=..2] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=8..14}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^4 minecraft:air if block ^ ^ ^3 minecraft:air if block ^ ^ ^2 minecraft:air if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^4
execute if entity @s[scores={Time=8..14}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^3 minecraft:air if block ^ ^ ^2 minecraft:air if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^3
execute if entity @s[scores={Time=8..14}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^2 minecraft:air if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^2
execute if entity @s[scores={Time=8..14}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^1

tag @s[scores={Time=21}] add idle
tag @s[scores={Time=21}] remove sweep
tag @s[scores={Time=21}] remove attack_sweep
scoreboard players set @s[scores={Time=21}] Time 0