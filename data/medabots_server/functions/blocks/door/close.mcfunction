execute if entity @s[tag=east] run fill ~ ~ ~ ~ ~3 ~-1 minecraft:barrier replace minecraft:iron_trapdoor
execute if entity @s[tag=north] run fill ~ ~ ~ ~-1 ~3 ~ minecraft:barrier replace minecraft:iron_trapdoor
execute if entity @s[tag=south] run fill ~ ~ ~ ~1 ~3 ~ minecraft:barrier replace minecraft:iron_trapdoor
execute if entity @s[tag=west] run fill ~ ~ ~ ~ ~3 ~1 minecraft:barrier replace minecraft:iron_trapdoor

playsound medabots_server:block.door.close block @a ~ ~ ~ 1