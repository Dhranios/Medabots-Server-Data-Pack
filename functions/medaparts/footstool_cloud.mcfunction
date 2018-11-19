# Tag when to remove
tag @s[nbt={Age:10}] add remove

# Set the barrier
execute if entity @s[tag=!remove] run fill ~ ~1 ~ ~ ~ ~ minecraft:barrier replace minecraft:air

# Remove the barrier
execute if entity @s[tag=remove] run fill ~ ~1 ~ ~ ~ ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead] run fill ~ ~1 ~ ~ ~ ~ minecraft:air replace minecraft:barrier
