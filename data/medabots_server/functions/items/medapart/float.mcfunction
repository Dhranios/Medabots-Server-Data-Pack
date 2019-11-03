# Tag the equipped users
execute if entity @s[scores={LegsArmor=1..}] run effect give @s minecraft:slow_falling 1 0 true

# Prevent standing on ground
execute unless block ~ ~-1.4 ~ minecraft:air run effect give @s[scores={LegsArmor=1..}] minecraft:levitation 1 0 true
execute rotated ~ 0 anchored eyes unless block ^ ^0.3 ^1 minecraft:barrier unless block ^ ^0.3 ^1 minecraft:black_stained_glass unless block ^ ^0.3 ^1 minecraft:air run effect clear @s minecraft:levitation
execute unless block ~ ~-0.4 ~ minecraft:air run effect give @s[scores={LegsArmor=1..}] minecraft:levitation 1 0 true

# Hot air
execute if entity @s[scores={LegsArmor=1..}] run function medabots_server:items/medapart/float/hot_air
effect give @s[tag=hot_air] minecraft:levitation 1 0 true

# Instantly fall
execute if block ~ ~-1.4 ~ minecraft:air if block ~ ~-0.4 ~ minecraft:air run effect clear @s[tag=!hot_air] minecraft:levitation
execute if block ~ ~-0.4 ~ minecraft:air rotated ~ 0 anchored eyes unless block ^ ^0.3 ^1 minecraft:barrier unless block ^ ^0.3 ^1 minecraft:black_stained_glass unless block ^ ^0.3 ^1 minecraft:air run effect clear @s[tag=!hot_air] minecraft:levitation
tag @s remove hot_air