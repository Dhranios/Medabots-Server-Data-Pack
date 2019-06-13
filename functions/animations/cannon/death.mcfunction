scoreboard players add @s[tag=dying] DeathTime 1
execute if entity @s[scores={DeathTime=1}] run playsound medabots_server:entity.cannon.death hostile @a ~ ~ ~ 1
data merge entity @s[scores={DeathTime=1}] {AbsorptionAmount:1000000.0f}
execute if entity @s[scores={DeathTime=1}] run loot spawn ~ ~ ~ kill @s
execute if entity @s[scores={DeathTime=1}] run fill ~ ~2 ~ ~ ~2 ~ minecraft:air replace minecraft:barrier
execute if entity @s[scores={DeathTime=1}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:iron_block
execute if entity @s[scores={DeathTime=1}] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
execute if entity @s[scores={DeathTime=1}] run summon minecraft:falling_block ~ ~ ~ {Time:1,NoGravity:1b,DropItem:0b,BlockState:{Name:"minecraft:iron_block"},Tags:["cannon_base"]}
execute if entity @s[scores={DeathTime=1..20}] run teleport @s ~ ~0.2 ~ ~ ~-4.5
execute if entity @s[scores={DeathTime=21..45}] run teleport @s ~ ~-0.2 ~ ~ ~9
execute if entity @s[scores={DeathTime=46..60}] run teleport @s ~ ~-0.2 ~
execute if entity @s[scores={DeathTime=46..60}] positioned ~ ~1 ~ run teleport @e[type=minecraft:falling_block,distance=..0.7,tag=cannon_base] ~ ~-0.2 ~
execute if entity @s[scores={DeathTime=60}] run particle minecraft:cloud ~ ~4 ~ 1 0 1 0 30
execute if entity @s[scores={DeathTime=60}] run summon minecraft:experience_orb ~ ~4 ~ {Value:1s}
tag @s[scores={DeathTime=60}] add dead
execute if entity @s[scores={DeathTime=60}] positioned ~ ~1 ~ run tag @e[type=minecraft:falling_block,distance=..0.7,tag=cannon_base] add dead

execute positioned ~ ~1 ~ as @e[type=minecraft:falling_block,distance=..5,tag=cannon_base] run data merge entity @s {Air:1,Motion:[0.0d,0.0d,0.0d]}
execute positioned ~ ~1 ~ as @e[type=minecraft:falling_block,distance=..5,tag=cannon_base] run data merge entity @s {Air:0,Motion:[0.0d,0.0d,0.0d]}