# Tag the equipped users
tag @s[tag=hostile,scores={LegsArmor=1..},tag=float_legs,type=!minecraft:player] add float
tag @s[tag=hostile,scores={LegsArmor=1..},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"float"}}}]}] add float
tag @s[tag=hostile,scores={LegsArmor=..0}] remove float
execute if entity @s[tag=hostile,tag=float] run effect give @s minecraft:slow_falling 1 0 true

# Prevent standing on ground
execute unless block ~ ~-1.2 ~ minecraft:air run effect give @s[tag=float,tag=!sneak_pos] minecraft:levitation 1 0 true
execute unless block ~ ~-0.5 ~ minecraft:air run effect give @s[tag=float] minecraft:levitation 1 0 true

# Hot air
execute if entity @s[tag=hostile,scores={LegsArmor=1..},tag=float] run function medabots_server:items/medapart/float/hot_air
effect give @s[tag=float,tag=hot_air] minecraft:levitation 1 0 true

# Instantly fall
execute if block ~ ~-1.2 ~ minecraft:air if block ~ ~-0.5 ~ minecraft:air run effect clear @s[tag=float,tag=!hot_air,tag=!sneak_pos] minecraft:levitation
execute if block ~ ~-0.5 ~ minecraft:air run effect clear @s[tag=float,tag=!hot_air,tag=sneak_pos] minecraft:levitation

# No floating when not in battle
tag @s remove float
tag @s remove hot_air