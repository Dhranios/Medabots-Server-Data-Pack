scoreboard players add @s DeathTime 1
data merge entity @s[scores={DeathTime=1}] {AbsorptionAmount:1000000.0f}
execute at @s[scores={DeathTime=1}] run teleport @s ~ ~ ~ -33.75 0
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
execute if entity @s[scores={DeathTime=1..19}] run teleport @s ~ ~0.4 ~-0.8
execute if entity @s[scores={DeathTime=20..24}] run teleport @s ~ ~ ~-0.8
execute if entity @s[scores={DeathTime=25..34}] run teleport @s ~ ~-0.4 ~-0.4
execute if entity @s[scores={DeathTime=34..}] run teleport @s ~ ~-0.8 ~
execute at @s[scores={DeathTime=1..9}] run teleport @s ~ ~ ~ ~7.5 ~
execute at @s[scores={DeathTime=10..19}] run teleport @s ~ ~ ~ ~-7.5 ~
execute at @s[scores={DeathTime=21..29}] run teleport @s ~ ~ ~ ~7.5 ~
execute at @s[scores={DeathTime=30..39}] run teleport @s ~ ~ ~ ~-7.5 ~
execute at @s[scores={DeathTime=41..49}] run teleport @s ~ ~ ~ ~7.5 ~
execute at @s[scores={DeathTime=50..59}] run teleport @s ~ ~ ~ ~-7.5 ~
execute at @s[scores={DeathTime=61..69}] run teleport @s ~ ~ ~ ~7.5 ~
execute at @s[scores={DeathTime=70..79}] run teleport @s ~ ~ ~ ~-7.5 ~
execute at @s[scores={DeathTime=81..89}] run teleport @s ~ ~ ~ ~7.5 ~
execute at @s[scores={DeathTime=90..99}] run teleport @s ~ ~ ~ ~-7.5 ~
execute if entity @s[scores={DeathTime=100}] run playsound minecraft:entity.generic.explode hostile @a[tag=potential_target] ~ ~ ~ 7
execute if entity @s[scores={DeathTime=100}] run particle minecraft:explosion ~-1 ~-1 ~-1 3 3 3 0 30
execute if entity @s[scores={DeathTime=100}] run particle minecraft:cloud ~-1 ~-1 ~-1 3 3 3 0 130
tag @s[scores={DeathTime=100}] add dead