scoreboard players add @s[tag=dying] DeathTime 1
execute if entity @s[scores={DeathTime=1}] run playsound medabots_server:entity.guard.death hostile @a ~ ~ ~ 1
data merge entity @s[scores={DeathTime=1}] {AbsorptionAmount:1000000.0f}
execute if entity @s[scores={DeathTime=1}] run loot spawn ~ ~ ~ kill @s
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute if entity @s[scores={DeathTime=1}] as @e[distance=..1] unless entity @s[type=!minecraft:item,type=!minecraft:experience_orb] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={DeathTime=1}] run teleport @s ~ ~-5 ~
execute if entity @s[scores={DeathTime=70}] run particle minecraft:cloud ~ ~5 ~ 1 1 1 0 30
execute if entity @s[scores={DeathTime=70}] run particle minecraft:cloud ^ ^5 ^0.5 1 1 1 0 30
tag @s[scores={DeathTime=70}] add dead