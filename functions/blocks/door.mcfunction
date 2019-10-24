# Is this door powered?
execute if score @s PowerAmount >= @s PowerNeeded run tag @s[tag=!no_open] add powered
execute unless score @s PowerAmount >= @s PowerNeeded run tag @s remove powered

# Open the door
execute if entity @s[tag=powered] if block ~ ~ ~ minecraft:iron_door[open=false] run function medabots_server:blocks/door/open

# Close the door
execute if entity @s[tag=!powered] if block ~ ~ ~ minecraft:iron_door[open=true] run function medabots_server:blocks/door/close

# Remove when cleaning up a stage
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=east] run fill ~ ~ ~ ~ ~3 ~1 minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=east] run fill ~ ~ ~ ~ ~3 ~1 minecraft:air replace minecraft:iron_door
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=north] run fill ~ ~ ~ ~1 ~3 ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=north] run fill ~ ~ ~ ~1 ~3 ~ minecraft:air replace minecraft:iron_door
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=south] run fill ~ ~ ~ ~-1 ~3 ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=south] run fill ~ ~ ~ ~-1 ~3 ~ minecraft:air replace minecraft:iron_door
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=west] run fill ~ ~ ~ ~ ~3 ~-1 minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=west] run fill ~ ~ ~ ~ ~3 ~-1 minecraft:air replace minecraft:iron_door

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object
tag @s[tag=no_open] remove no_open