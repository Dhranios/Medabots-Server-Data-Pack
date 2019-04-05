# Set tnt and item as in battle
tag @s[type=minecraft:tnt] add hostile
tag @s[type=minecraft:item] add hostile

# Make everything in battle trigger buttons
scoreboard players add @s[tag=hostile] Fly 0
scoreboard players add @s[tag=hostile] Float 0

# Mark undead so instant damage effect weapons give instant health
tag @s[type=minecraft:husk] add undead
tag @s[type=minecraft:skeleton] add undead
tag @s[type=minecraft:skeleton_horse] add undead
tag @s[type=minecraft:stray] add undead
tag @s[type=minecraft:wither] add undead
tag @s[type=minecraft:wither_skeleton] add undead
tag @s[type=minecraft:zombie] add undead
tag @s[type=minecraft:zombie_horse] add undead
tag @s[type=minecraft:zombie_pigman] add undead
tag @s[type=minecraft:zombie_villager] add undead

kill @s[type=minecraft:fishing_bobber]

# Tag everything that they're marked
tag @s add marked
