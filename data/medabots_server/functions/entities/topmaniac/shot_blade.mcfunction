execute positioned ~ ~1.43 ~ run effect give @e[tag=potential_target,distance=..0.7] minecraft:instant_damage 1 1 true
execute positioned ~ ~1.43 ~ if entity @e[tag=potential_target,distance=..0.7] run tag @s add hit
execute positioned ~ ~1.43 ~ as @e[tag=potential_target,distance=..0.7] rotated ~ 0 positioned as @s if block ^ ^0.3 ^0.3 minecraft:air run teleport @s ^ ^0.3 ^0.3
scoreboard players add @s Time 1

teleport @s[tag=hit] ~ ~2 ~
tag @s[scores={Time=100}] add hit
execute positioned ~ ~1.43 ~ unless block ~0.3 ~ ~ minecraft:air run tag @s add hit
execute positioned ~ ~1.43 ~ unless block ~ ~ ~0.3 minecraft:air run tag @s add hit
execute positioned ~ ~1.43 ~ unless block ~-0.3 ~ ~ minecraft:air run tag @s add hit
execute positioned ~ ~1.43 ~ unless block ~ ~ ~-0.3 minecraft:air run tag @s add hit
execute at @s run teleport @s[tag=hit] ~ ~-6 ~
scoreboard players reset @s[tag=hit] Time

teleport @s[tag=!hit] ^ ^ ^0.6
