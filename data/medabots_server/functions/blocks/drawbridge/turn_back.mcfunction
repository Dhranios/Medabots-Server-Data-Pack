execute if entity @s[tag=east] run setblock ~ ~1 ~ minecraft:iron_trapdoor[facing=west,powered=false,open=true,half=bottom]
execute if entity @s[tag=west] run setblock ~ ~1 ~ minecraft:iron_trapdoor[facing=east,powered=false,open=true,half=bottom]
execute if entity @s[tag=north] run setblock ~ ~1 ~ minecraft:iron_trapdoor[facing=south,powered=false,open=true,half=bottom]
execute if entity @s[tag=south] run setblock ~ ~1 ~ minecraft:iron_trapdoor[facing=north,powered=false,open=true,half=bottom]
execute if entity @s[tag=east] run setblock ~1 ~ ~ minecraft:air
execute if entity @s[tag=west] run setblock ~-1 ~ ~ minecraft:air
execute if entity @s[tag=north] run setblock ~ ~ ~-1 minecraft:air
execute if entity @s[tag=south] run setblock ~ ~ ~1 minecraft:air