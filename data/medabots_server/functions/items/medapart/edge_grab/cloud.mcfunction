# Tag to fall
tag @s[nbt={Age:30}] add drop

# Prefent falling through
execute if entity @s[nbt={Age:0}] run teleport @e[distance=..1,tag=medabot] ~ ~1.2 ~
execute if entity @s[nbt={Age:1}] positioned ~ ~1 ~ run effect clear @e[distance=..1,tag=medabot] minecraft:resistance

# Place barrier
execute if entity @s[nbt={Age:1}] unless block ~ ~-1 ~ minecraft:air run tag @s add only_top
execute if entity @s[nbt={Age:1}] run fill ~ ~ ~ ~ ~-1 ~ minecraft:barrier replace minecraft:air
execute if entity @s[nbt={Age:1}] positioned ~ ~1 ~ at @e[distance=..1,tag=medabot] run playsound medabots_server:entity.medabot.move.edge_grab player @a ~ ~ ~ 1

# Make fall
tag @s[tag=dead] add drop
execute if entity @s[tag=drop] positioned ~ ~1 ~ at @e[distance=..1,tag=medabot] run playsound medabots_server:entity.medabot.move.edge_grab_drop player @a ~ ~ ~ 1
execute if entity @s[tag=drop,tag=only_top] positioned ~ ~1 ~ as @e[distance=..1,tag=medabot] at @s run teleport @s ~ ~-1 ~
execute if entity @s[tag=drop,tag=!only_top] positioned ~ ~1 ~ as @e[distance=..1,tag=medabot] at @s run teleport @s ~ ~-1.3 ~
execute if entity @s[tag=drop,tag=!only_top] run fill ~ ~ ~ ~ ~-1 ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=drop,tag=only_top] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:barrier