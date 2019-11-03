# Set accelerator
execute if entity @s[tag=east] run fill ~ ~ ~ ~ ~ ~ minecraft:comparator[facing=west,mode=compare,powered=false] replace minecraft:air
execute if entity @s[tag=north] run fill ~ ~ ~ ~ ~ ~ minecraft:comparator[facing=south,mode=compare,powered=false] replace minecraft:air
execute if entity @s[tag=south] run fill ~ ~ ~ ~ ~ ~ minecraft:comparator[facing=north,mode=compare,powered=false] replace minecraft:air
execute if entity @s[tag=west] run fill ~ ~ ~ ~ ~ ~ minecraft:comparator[facing=east,mode=compare,powered=false] replace minecraft:air

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
kill @s[tag=dead]