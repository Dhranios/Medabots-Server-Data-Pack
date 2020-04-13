# Jammy model
execute if entity @s[tag=!dead] run setblock ~ ~ ~ minecraft:end_rod[facing=up]

# Jammy broken
tag @s[nbt={AbsorptionAmount:0.0f}] add dead
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:end_rod run particle minecraft:block minecraft:end_rod ~ ~0.5 ~ 0.5 0.5 0.5 0 80
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:end_rod run playsound medabots_server:block.jammy block @a ~ ~ ~ 1
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:end_rod run setblock ~ ~ ~ minecraft:air
teleport @s[tag=dead] ~ -100 ~