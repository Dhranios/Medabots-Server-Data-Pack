# Tag the equipped users
tag @s[tag=hostile,scores={LegsArmor=1..},tag=float_legs,type=!minecraft:player] add float
tag @s[tag=hostile,scores={LegsArmor=1..},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"float"}}}]}] add float
tag @s[tag=hostile,scores={LegsArmor=..0}] remove float
execute if entity @s[tag=hostile,tag=float] run effect give @s minecraft:slow_falling 1 0 true

# Prevent standing on ground
execute unless block ~ ~-1 ~ minecraft:air run effect give @s[tag=float] minecraft:levitation 1 0 true

# Instantly fall
execute if block ~ ~-1 ~ minecraft:air run effect clear @s[tag=float] minecraft:levitation

# No floating when not in battle
tag @s remove float