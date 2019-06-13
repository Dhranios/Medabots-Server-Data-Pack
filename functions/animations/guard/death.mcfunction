scoreboard players add @s[tag=dying] DeathTime 1
execute if entity @s[scores={DeathTime=1}] run playsound medabots_server:entity.guard.death hostile @a ~ ~ ~ 1
data merge entity @s[scores={DeathTime=1}] {AbsorptionAmount:1000000.0f}
execute if entity @s[scores={DeathTime=1}] run loot spawn ~ ~ ~ kill @s
teleport @s[scores={DeathTime=20}] ~ ~ ~ ~ ~-10
teleport @s[scores={DeathTime=24}] ~ ~ ~ ~ ~20
teleport @s[scores={DeathTime=28}] ~ ~ ~ ~ ~-20
teleport @s[scores={DeathTime=32}] ~ ~ ~ ~ ~20
teleport @s[scores={DeathTime=36}] ~ ~ ~ ~ ~-20
teleport @s[scores={DeathTime=40}] ~ ~ ~ ~ ~10
teleport @s[scores={DeathTime=60..80}] ~ ~ ~ ~ ~4.5
execute if entity @s[scores={DeathTime=80}] run particle minecraft:cloud ~ ~ ~ 1 1 1 0 30
execute if entity @s[scores={DeathTime=80}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
tag @s[scores={DeathTime=80}] add dead