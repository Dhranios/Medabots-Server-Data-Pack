scoreboard players add @s DeathTime 1
data merge entity @s[scores={DeathTime=1}] {AbsorptionAmount:1000000.0f}
execute if entity @s[scores={DeathTime=1}] run playsound medabots_server:entity.topman.death hostile @a ~ ~ ~ 1
execute at @s[scores={DeathTime=1}] run teleport @s ~ ~-5 ~ ~ ~
execute if entity @s[scores={DeathTime=1}] run loot spawn ~ ~ ~ kill @s
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:5s}
execute if entity @s[scores={DeathTime=1}] as @e[distance=..3] unless entity @s[type=!minecraft:item,type=!minecraft:experience_orb] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={DeathTime=40}] run playsound minecraft:entity.generic.explode hostile @a[tag=potential_target] ~ ~ ~ 7
execute if entity @s[scores={DeathTime=40}] run particle minecraft:cloud ~-0.5 ~4.5 ~-0.5 1 1 1 0 10
tag @s[scores={DeathTime=40}] add dead