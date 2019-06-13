# Got to go fast
execute if block ~ ~ ~ minecraft:stone_slab[type=bottom] run title @s actionbar {"translate":"medabots_server:move.legs","color":"blue"}
execute if block ~ ~ ~ minecraft:stone_slab[type=bottom] run effect give @s minecraft:speed 1 10 true
execute if block ~ ~-1 ~ minecraft:stone_slab[type=bottom] run title @s actionbar {"translate":"medabots_server:move.legs","color":"blue"}
execute if block ~ ~-1 ~ minecraft:stone_slab[type=bottom] run effect give @s minecraft:speed 1 10 true

# no off-road speeding
execute if block ~ ~-1 ~ minecraft:polished_andesite run effect clear @s minecraft:speed
execute if block ~ ~-2 ~ minecraft:polished_andesite run effect clear @s minecraft:speed