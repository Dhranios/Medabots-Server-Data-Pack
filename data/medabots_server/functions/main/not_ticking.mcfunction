# Make it properly get removed
tag @s[tag=dead] remove no_ticking

# Prevent falling blocks from messing up
execute if entity @s[type=minecraft:falling_block] run data merge entity @s {Time:1}

# Prevent hole model from messing up
execute as @s[tag=hole] run setblock ~ ~-1 ~ minecraft:black_carpet

# Model
execute if entity @s[tag=guard,tag=!action_floor,tag=!pot] run function medabots_server:animations/guard
execute if entity @s[tag=cannon,tag=!action_floor,tag=!pot] run function medabots_server:animations/cannon