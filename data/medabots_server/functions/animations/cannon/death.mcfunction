scoreboard players add @s[tag=dying] DeathTime 1
execute if entity @s[scores={DeathTime=1}] run playsound medabots_server:entity.cannon.death hostile @a ~ ~ ~ 1
data merge entity @s[scores={DeathTime=1}] {AbsorptionAmount:1000000.0f}
execute if entity @s[scores={DeathTime=1}] run loot spawn ~ ~ ~ kill @s
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute if entity @s[scores={DeathTime=1}] as @e[distance=..1] unless entity @s[type=!minecraft:item,type=!minecraft:experience_orb] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={DeathTime=1}] run fill ~ ~2 ~ ~ ~2 ~ minecraft:air replace minecraft:black_stained_glass
execute if entity @s[scores={DeathTime=1}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:black_stained_glass
execute if entity @s[scores={DeathTime=1}] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
execute if entity @s[scores={DeathTime=40}] run particle minecraft:cloud ~ ~ ~ 1 0 1 0 30
tag @s[scores={DeathTime=40}] add dead
execute if entity @s[scores={DeathTime=40,ActionFloorNr=0..}] run function medabots_server:blocks/action_floor/reenable_spawning