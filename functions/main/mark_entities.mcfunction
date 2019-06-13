# Set tnt and item as in battle
tag @s[type=minecraft:tnt] add hostile
tag @s[type=minecraft:item] add hostile

# Make everything in battle trigger buttons
scoreboard players add @s[tag=hostile] Fly 0

kill @s[type=minecraft:fishing_bobber]

# Tag everything that they're marked
tag @s add marked
