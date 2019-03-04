# Allow swimming for equipped users
tag @s[tag=swim] remove swim
tag @s[scores={LegsArmor=1..},type=!minecraft:player,tag=swim_legs] add swim
tag @s[scores={LegsArmor=1..},type=minecraft:player,nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"swim"}}}]}] add swim

# Kill unequipped users in deep water
execute if entity @s[tag=!swim,type=minecraft:player] anchored eyes if block ^ ^ ^ minecraft:water run tellraw @a {"translate":"medabots_server:death.water","with":[{"selector":"@s"}]}
execute if entity @s[tag=!swim,type=minecraft:player] anchored eyes if block ^ ^ ^ minecraft:water run tag @s add had_death
execute if entity @s[tag=!swim] anchored eyes if block ^ ^ ^ minecraft:water run tag @s add dead

# Whirlpool
execute if entity @s[type=minecraft:player] if block ~ ~-1 ~ minecraft:bubble_column if block ~ ~-2 ~ minecraft:magma_block run tellraw @a {"translate":"medabots_server:death.whirlpool","with":[{"selector":"@s"}]}
execute if entity @s[type=minecraft:player] if block ~ ~-1 ~ minecraft:bubble_column if block ~ ~-2 ~ minecraft:magma_block run tag @s add had_death
execute if block ~ ~-1 ~ minecraft:bubble_column if block ~ ~-2 ~ minecraft:magma_block run tag @s add dead
execute if entity @s[type=minecraft:player] if block ~ ~ ~ minecraft:bubble_column if block ~ ~-1 ~ minecraft:magma_block run tellraw @a {"translate":"medabots_server:death.whirlpool","with":[{"selector":"@s"}]}
execute if entity @s[type=minecraft:player] if block ~ ~ ~ minecraft:bubble_column if block ~ ~-1 ~ minecraft:magma_block run tag @s add had_death
execute if block ~ ~ ~ minecraft:bubble_column if block ~ ~-1 ~ minecraft:magma_block run tag @s add dead