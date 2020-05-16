execute if entity @s[scores={DeathTime=1}] run advancement grant @a[tag=potential_target,distance=..30] only medabots_server:bosses/wave_1/topmaniac
scoreboard players add @s DeathTime 1
data merge entity @s[scores={DeathTime=1}] {AbsorptionAmount:1000000.0f}
execute at @s[scores={DeathTime=1}] run teleport @s ~ ~0.7 ~ ~ ~
execute if entity @s[scores={DeathTime=1}] run loot spawn ~ ~ ~ kill @s
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~-1 ~ ~ {Value:5s}
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~-1 {Value:5s}
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~1 ~ ~ {Value:5s}
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~1 {Value:5s}
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~1 ~ ~1 {Value:1s}
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~-1 ~ ~1 {Value:1s}
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~1 ~ ~-1 {Value:1s}
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~-1 ~ ~-1 {Value:1s}
execute if entity @s[scores={DeathTime=1}] as @e[distance=..3] unless entity @s[type=!minecraft:item,type=!minecraft:experience_orb] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={DeathTime=40}] run playsound minecraft:entity.generic.explode hostile @a[tag=potential_target] ~ ~ ~ 7
execute if entity @s[scores={DeathTime=40}] run particle minecraft:explosion ~-1 ~-1 ~-1 3 3 3 0 30
execute if entity @s[scores={DeathTime=40}] run particle minecraft:cloud ~-1 ~-1 ~-1 3 3 3 0 130
tag @s[scores={DeathTime=40}] add dead