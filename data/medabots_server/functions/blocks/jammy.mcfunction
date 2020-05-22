# Jammy broken
tag @s[nbt={AbsorptionAmount:0.0f}] add dead
execute if entity @s[nbt={AbsorptionAmount:0.0f}] run playsound medabots_server:block.jammy block @a ~ ~ ~ 1
execute if entity @s[nbt={AbsorptionAmount:0.0f}] run particle minecraft:item minecraft:diamond_pickaxe{Damage:10,Unbreakable:1b,CustomModelData:32} ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[tag=dead] run tag @e[distance=..0.7,tag=jammy_model,limit=1] add dead
teleport @s[tag=dead] ~ -100 ~