# Open the door
execute if entity @s[tag=open] if block ~ ~ ~ minecraft:iron_door[open=false] run function medabots_server:blocks/door/open

# Close the door
execute if entity @s[tag=!open] if block ~ ~ ~ minecraft:iron_door[open=true] run function medabots_server:blocks/door/close

# Remove when cleaning up a stage
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=east] run fill ~ ~ ~ ~ ~3 ~1 minecraft:air replace minecraft:iron_door
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=east] run fill ~ ~ ~ ~ ~3 ~1 minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=north] run fill ~ ~ ~ ~1 ~3 ~ minecraft:air replace minecraft:iron_door
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=north] run fill ~ ~ ~ ~1 ~3 ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=south] run fill ~ ~ ~ ~-1 ~3 ~ minecraft:air replace minecraft:iron_door
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=south] run fill ~ ~ ~ ~-1 ~3 ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=west] run fill ~ ~ ~ ~ ~3 ~-1 minecraft:air replace minecraft:iron_door
execute if entity @s[tag=dead] if block ~ ~ ~ minecraft:iron_door[facing=west] run fill ~ ~ ~ ~ ~3 ~-1 minecraft:air replace minecraft:barrier