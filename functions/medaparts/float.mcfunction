# Tag the equipped users
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..,Float=0},tag=float_legs,type=!minecraft:player] Float 2
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"float"}}}]}] Float 2
execute if block ~ ~-1 ~ minecraft:air run scoreboard players set @s[scores={Float=1..}] Float 1
execute unless block ~ ~-1 ~ minecraft:air run scoreboard players set @s[scores={Float=1..,LegsArmor=1..},type=!minecraft:player] Float 2
scoreboard players set @s[tag=hostile,scores={LegsArmor=..0,Float=1..}] Float 0

# Float up unless there's moving piston blocks below
effect give @s[scores={Float=2}] minecraft:slow_falling 1 0 true
effect give @s[scores={Float=2}] minecraft:levitation 1 1 true
execute if block ~ ~-1 ~ minecraft:moving_piston run effect clear @s[scores={Float=2}] minecraft:levitation
execute if block ~ ~-2 ~ minecraft:moving_piston run effect clear @s[scores={Float=2}] minecraft:levitation
execute if block ~ ~-3 ~ minecraft:moving_piston run effect clear @s[scores={Float=2}] minecraft:levitation

# No floating when not in battle
scoreboard players set @s[scores={Float=1..},tag=!hostile] Float 0

# Instantly fall
effect clear @s[scores={Float=..1,Fly=..2},tag=!falling] minecraft:levitation