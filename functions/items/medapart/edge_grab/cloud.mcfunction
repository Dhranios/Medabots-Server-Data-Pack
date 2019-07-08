# Tag to fall
tag @s[nbt={Age:30}] add drop

# Prefent falling through
execute if entity @s[nbt={Age:0}] run teleport @a[distance=..1] ~ ~1.2 ~
execute if entity @s[nbt={Age:1}] positioned ~ ~1 ~ run effect clear @a[distance=..1] minecraft:resistance

# Place barrier
execute if entity @s[nbt={Age:0}] if block ~ ~-1 ~ minecraft:barrier run tag @s add only_top
execute if entity @s[nbt={Age:0}] run fill ~ ~ ~ ~ ~-1 ~ minecraft:barrier replace minecraft:air
execute if entity @s[nbt={Age:0}] positioned ~ ~1 ~ at @a[distance=..1] run playsound medabots_server:entity.medabot.move.edge_grab player @a ~ ~ ~ 1

# Make fall
tag @s[tag=dead] add drop
execute if entity @s[tag=drop] positioned ~ ~1 ~ at @a[distance=..1] run playsound medabots_server:entity.medabot.move.edge_grab_drop player @a ~ ~ ~ 1
execute if entity @s[tag=drop,tag=only_top] positioned ~ ~1 ~ as @a[distance=..1] at @s run teleport @s ~ ~-1 ~
execute if entity @s[tag=drop,tag=!only_top] positioned ~ ~1 ~ as @a[distance=..1] at @s run teleport @s ~ ~-1.3 ~
execute if entity @s[tag=drop,tag=!only_top] run fill ~ ~ ~ ~ ~-1 ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=drop,tag=only_top] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:barrier
kill @s[tag=drop]