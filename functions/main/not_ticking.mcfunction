# Make it properly get removed
tag @s[tag=dead] remove no_ticking

# Prevent falling blocks from messing up
execute if entity @s[type=minecraft:falling_block] run data merge entity @s {Time:1}

# Prevent hole model from messing up
execute as @s[tag=hole] run setblock ~ ~-1 ~ minecraft:black_carpet

# Prevent accelerator model from messing up
execute if entity @s[tag=east,tag=accelerator] run fill ~ ~ ~ ~ ~ ~ minecraft:comparator[facing=west,mode=compare,powered=false] replace minecraft:air
execute if entity @s[tag=north,tag=accelerator] run fill ~ ~ ~ ~ ~ ~ minecraft:comparator[facing=south,mode=compare,powered=false] replace minecraft:air
execute if entity @s[tag=south,tag=accelerator] run fill ~ ~ ~ ~ ~ ~ minecraft:comparator[facing=north,mode=compare,powered=false] replace minecraft:air
execute if entity @s[tag=west,tag=accelerator] run fill ~ ~ ~ ~ ~ ~ minecraft:comparator[facing=east,mode=compare,powered=false] replace minecraft:air
