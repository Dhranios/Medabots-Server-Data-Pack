# Move in the correct direction
execute if entity @s[tag=hit_to_north] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 if block ~ ~ ~-1 minecraft:air if block ~ ~1 ~-1 minecraft:air run teleport @s ~ ~ ~-1
execute if entity @s[tag=hit_to_north] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 unless block ~ ~ ~-1 minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_north] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 unless block ~ ~1 ~-1 minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_south] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 if block ~ ~ ~1 minecraft:air if block ~ ~1 ~1 minecraft:air run teleport @s ~ ~ ~1
execute if entity @s[tag=hit_to_south] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 unless block ~ ~ ~1 minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_south] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 unless block ~ ~1 ~1 minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_east] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 if block ~1 ~ ~ minecraft:air if block ~1 ~1 ~ minecraft:air run teleport @s ~1 ~ ~
execute if entity @s[tag=hit_to_east] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 unless block ~1 ~ ~ minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_east] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 unless block ~1 ~1 ~ minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_west] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 if block ~-1 ~ ~ minecraft:air if block ~-1 ~1 ~ minecraft:air run teleport @s ~-1 ~ ~
execute if entity @s[tag=hit_to_west] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 unless block ~-1 ~ ~ minecraft:air run tag @s remove hammer_punch_hit
execute if entity @s[tag=hit_to_west] positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.2 ~0.5 unless block ~-1 ~1 ~ minecraft:air run tag @s remove hammer_punch_hit

# Can it still move? yes? do it again
scoreboard players add #temp Money 1
execute if entity @s[tag=hammer_punch_hit] at @s if score #temp Money matches ..3 run function medabots_server:blocks/hammer_punch/hit
scoreboard players reset #temp Money

# Remove remaining tags
tag @s[tag=!hammer_punch_hit] remove hit_to_north
tag @s[tag=!hammer_punch_hit] remove hit_to_south
tag @s[tag=!hammer_punch_hit] remove hit_to_east
tag @s[tag=!hammer_punch_hit] remove hit_to_west