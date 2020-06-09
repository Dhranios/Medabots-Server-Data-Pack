# Allow swimming for equipped users
tag @s[scores={LegsArmor=1..},tag=swim_legs] add swim
execute if entity @s[type=!minecraft:player,tag=swim] if block ~ ~1.1 ~ minecraft:water run data modify entity @s Motion[1] set value 0.0824d

# Kill unequipped users in deep water
execute if entity @s[tag=!swim,tag=!had_death] anchored eyes if block ^ ^ ^ #medabots_server:water run function medabots_server:other/death/deep_water
execute if entity @s[tag=!swim,tag=!had_death,nbt={OnGround:0b}] if block ~ ~ ~ #medabots_server:water if block ~0.3 ~-1 ~0.3 #medabots_server:water if block ~-0.3 ~-1 ~0.3 #medabots_server:water if block ~0.3 ~-1 ~-0.3 #medabots_server:water if block ~-0.3 ~-1 ~-0.3 #medabots_server:water run function medabots_server:other/death/deep_water

# Whirlpool
execute if entity @s[tag=!had_death] if block ~ ~ ~ minecraft:bubble_column if block ~ ~-1 ~ minecraft:bubble_column if block ~ ~-2 ~ minecraft:magma_block run function medabots_server:other/death/whirlpool
execute if entity @s[tag=!had_death] if block ~ ~ ~ minecraft:bubble_column if block ~ ~-1 ~ minecraft:magma_block run function medabots_server:other/death/whirlpool

tag @s remove swim