playsound medabots_server:block.hammer_punch hostile @a ~ ~ ~ 1
execute if block ~ ~1 ~ minecraft:piston[facing=north] positioned ~ ~ ~-1 run tag @e[distance=..0.7,tag=hostile] add hit_to_north
execute if block ~ ~1 ~ minecraft:piston[facing=north] positioned ~ ~ ~-1 run tag @e[distance=..0.7,tag=hostile] add hammer_punch_hit
execute if block ~ ~1 ~ minecraft:piston[facing=south] positioned ~ ~ ~1 run tag @e[distance=..0.7,tag=hostile] add hit_to_south
execute if block ~ ~1 ~ minecraft:piston[facing=south] positioned ~ ~ ~1 run tag @e[distance=..0.7,tag=hostile] add hammer_punch_hit
execute if block ~ ~1 ~ minecraft:piston[facing=east] positioned ~1 ~ ~ run tag @e[distance=..0.7,tag=hostile] add hit_to_east
execute if block ~ ~1 ~ minecraft:piston[facing=east] positioned ~1 ~ ~ run tag @e[distance=..0.7,tag=hostile] add hammer_punch_hit
execute if block ~ ~1 ~ minecraft:piston[facing=west] positioned ~-1 ~ ~ run tag @e[distance=..0.7,tag=hostile] add hit_to_west
execute if block ~ ~1 ~ minecraft:piston[facing=west] positioned ~-1 ~ ~ run tag @e[distance=..0.7,tag=hostile] add hammer_punch_hit
setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=true]
setblock ~ ~2 ~ minecraft:structure_void
