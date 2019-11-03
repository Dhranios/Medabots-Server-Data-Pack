# Move in the correct direction
execute if entity @s[tag=hit_to_north] if block ~ ~ ~-1 minecraft:air if block ~ ~1 ~-1 minecraft:air run teleport @s ~ ~ ~-1
execute if entity @s[tag=hit_to_north] unless block ~ ~ ~-1 minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_north] unless block ~ ~1 ~-1 minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_south] if block ~ ~ ~1 minecraft:air if block ~ ~1 ~1 minecraft:air run teleport @s ~ ~ ~1
execute if entity @s[tag=hit_to_south] unless block ~ ~ ~1 minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_south] unless block ~ ~1 ~1 minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_east] if block ~1 ~ ~ minecraft:air if block ~1 ~1 ~ minecraft:air run teleport @s ~1 ~ ~
execute if entity @s[tag=hit_to_east] unless block ~1 ~ ~ minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_east] unless block ~1 ~1 ~ minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_west] if block ~-1 ~ ~ minecraft:air if block ~-1 ~1 ~ minecraft:air run teleport @s ~-1 ~ ~
execute if entity @s[tag=hit_to_west] unless block ~-1 ~ ~ minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_west] unless block ~-1 ~1 ~ minecraft:air run tag @s remove hammer_punch_hit

# Can it still move? yes? do it again
execute if entity @s[tag=hammer_punch_hit] at @s run function medabots_server:blocks/hammer_punch/hit

# Remove remaining tags
tag @s remove hit_to_north
tag @s remove hit_to_south
tag @s remove hit_to_east
tag @s remove hit_to_west