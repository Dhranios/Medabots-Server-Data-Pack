execute if block ~ ~ ~ minecraft:iron_door[facing=west] run setblock ~ ~ ~ minecraft:iron_door[facing=west,open=false,hinge=left]
execute if block ~ ~ ~ minecraft:iron_door[facing=west] run setblock ~ ~ ~-1 minecraft:iron_door[facing=west,open=false,hinge=right]
execute if block ~ ~ ~ minecraft:iron_door[facing=west] run fill ~ ~2 ~ ~ ~3 ~-1 minecraft:barrier

execute if block ~ ~ ~ minecraft:iron_door[facing=south] run setblock ~ ~ ~ minecraft:iron_door[facing=south,open=false,hinge=left]
execute if block ~ ~ ~ minecraft:iron_door[facing=south] run setblock ~-1 ~ ~ minecraft:iron_door[facing=south,open=false,hinge=right]
execute if block ~ ~ ~ minecraft:iron_door[facing=south] run fill ~ ~2 ~ ~-1 ~3 ~ minecraft:barrier

execute if block ~ ~ ~ minecraft:iron_door[facing=north] run setblock ~ ~ ~ minecraft:iron_door[facing=north,open=false,hinge=left]
execute if block ~ ~ ~ minecraft:iron_door[facing=north] run setblock ~1 ~ ~ minecraft:iron_door[facing=north,open=false,hinge=right]
execute if block ~ ~ ~ minecraft:iron_door[facing=north] run fill ~ ~2 ~ ~1 ~3 ~ minecraft:barrier

execute if block ~ ~ ~ minecraft:iron_door[facing=east] run setblock ~ ~ ~ minecraft:iron_door[facing=east,open=false,hinge=left]
execute if block ~ ~ ~ minecraft:iron_door[facing=east] run setblock ~ ~ ~1 minecraft:iron_door[facing=east,open=false,hinge=right]
execute if block ~ ~ ~ minecraft:iron_door[facing=east] run fill ~ ~2 ~ ~ ~3 ~1 minecraft:barrier

playsound medabots_server:block.door.close block @a ~ ~ ~ 1