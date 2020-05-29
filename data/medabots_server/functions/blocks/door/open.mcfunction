execute if entity @s[tag=x] run fill ~1 ~ ~ ~1 ~3 ~ minecraft:iron_trapdoor[facing=west,half=bottom,open=true,powered=false] replace minecraft:black_stained_glass
execute if entity @s[tag=x] run fill ~ ~ ~ ~ ~3 ~ minecraft:iron_trapdoor[facing=east,half=bottom,open=true,powered=false] replace minecraft:black_stained_glass
execute if entity @s[tag=z] run fill ~ ~ ~1 ~ ~3 ~1 minecraft:iron_trapdoor[facing=north,half=bottom,open=true,powered=false] replace minecraft:black_stained_glass
execute if entity @s[tag=z] run fill ~ ~ ~ ~ ~3 ~ minecraft:iron_trapdoor[facing=south,half=bottom,open=true,powered=false] replace minecraft:black_stained_glass

playsound medabots_server:block.door.open block @a ~ ~ ~ 1