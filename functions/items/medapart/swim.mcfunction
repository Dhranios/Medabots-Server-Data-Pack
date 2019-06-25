# Allow swimming for equipped users
tag @s[tag=swim] remove swim
tag @s[scores={LegsArmor=1..},type=!minecraft:player,tag=swim_legs] add swim
tag @s[scores={LegsArmor=1..},type=minecraft:player,nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"swim"}}}]}] add swim
execute if entity @s[type=!minecraft:player,tag=swim] if block ~ ~1.1 ~ minecraft:water run data modify entity @s Motion[1] set value 0.0824d

# Kill unequipped users in deep water
execute if entity @s[tag=!swim,type=minecraft:player,tag=!had_death] anchored eyes if block ^ ^ ^ minecraft:water run tellraw @a {"translate":"medabots_server:death.water","with":[{"selector":"@s"}]}
execute if entity @s[tag=!swim,type=minecraft:player,tag=!had_death] anchored eyes if block ^ ^ ^ minecraft:water run tag @s add had_death
execute if entity @s[tag=!swim] anchored eyes if block ^ ^ ^ minecraft:water run tag @s add drowned
execute if entity @s[tag=!swim,type=minecraft:player,tag=!had_death,nbt={OnGround:0b}] if block ~ ~ ~ minecraft:water if block ~0.3 ~-1 ~ minecraft:water if block ~-0.3 ~-1 ~ minecraft:water if block ~ ~-1 ~0.3 minecraft:water if block ~ ~-1 ~-0.3 minecraft:water run tellraw @a {"translate":"medabots_server:death.water","with":[{"selector":"@s"}]}
execute if entity @s[tag=!swim,type=minecraft:player,tag=!had_death,nbt={OnGround:0b}] if block ~ ~ ~ minecraft:water if block ~0.3 ~-1 ~ minecraft:water if block ~-0.3 ~-1 ~ minecraft:water if block ~ ~-1 ~0.3 minecraft:water if block ~ ~-1 ~-0.3 minecraft:water run tag @s add had_death
execute if entity @s[tag=!swim,nbt={OnGround:0b}] if block ~ ~ ~ minecraft:water if block ~0.3 ~-1 ~ minecraft:water if block ~-0.3 ~-1 ~ minecraft:water if block ~ ~-1 ~0.3 minecraft:water if block ~ ~-1 ~-0.3 minecraft:water run tag @s add drowned

# Whirlpool
execute if entity @s[type=minecraft:player,tag=!had_death] if block ~ ~-1 ~ minecraft:bubble_column if block ~ ~-2 ~ minecraft:magma_block run tellraw @a {"translate":"medabots_server:death.whirlpool","with":[{"selector":"@s"}]}
execute if entity @s[type=minecraft:player,tag=!had_death] if block ~ ~-1 ~ minecraft:bubble_column if block ~ ~-2 ~ minecraft:magma_block run tag @s add had_death
execute if block ~ ~-1 ~ minecraft:bubble_column if block ~ ~-2 ~ minecraft:magma_block run tag @s add drowned
execute if entity @s[type=minecraft:player,tag=!had_death] if block ~ ~ ~ minecraft:bubble_column if block ~ ~-1 ~ minecraft:magma_block run tellraw @a {"translate":"medabots_server:death.whirlpool","with":[{"selector":"@s"}]}
execute if entity @s[type=minecraft:player,tag=!had_death] if block ~ ~ ~ minecraft:bubble_column if block ~ ~-1 ~ minecraft:magma_block run tag @s add had_death
execute if block ~ ~ ~ minecraft:bubble_column if block ~ ~-1 ~ minecraft:magma_block run tag @s add drowned

tag @s[tag=drowned,tag=guard] add dead
tag @s[tag=drowned,tag=bomb] add dead
tag @s[tag=drowned] add dying