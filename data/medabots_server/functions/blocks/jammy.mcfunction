# Jammy model
execute if entity @s[tag=!dead] run setblock ~ ~ ~ minecraft:end_rod[facing=up]

# Jammy broken
tag @s[nbt={AbsorptionAmount:0.0f}] add dead
execute if entity @s[tag=dead] run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=dead] run particle minecraft:block minecraft:end_rod ~ ~0.5 ~ 0.5 0.5 0.5 0 10
execute if entity @s[tag=dead] run playsound medabots_server:block.jammy block @a ~ ~ ~ 1
teleport @s[tag=dead] ~ -100 ~
kill @s[tag=dead]