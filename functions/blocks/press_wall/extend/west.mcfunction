execute if entity @s[scores={Range=2..,Time=1}] unless block ~-1 ~ ~ minecraft:air run tag @s remove extend
execute if entity @s[scores={Range=2..,Time=10}] if block ~-1 ~ ~ minecraft:air run playsound medabots_server:block.press_wall block @a ~ ~ ~ 1 0.2
execute if entity @s[scores={Range=2..,Time=10}] if block ~-1 ~ ~ minecraft:air positioned ~-1 ~ ~ run function medabots_server:blocks/press_wall/extend/x
execute if entity @s[scores={Range=3..,Time=10}] unless block ~-2 ~ ~ minecraft:air run tag @s remove extend
execute if entity @s[scores={Range=3..,Time=20}] if block ~-2 ~ ~ minecraft:air run playsound medabots_server:block.press_wall block @a ~ ~ ~ 1 0.4
execute if entity @s[scores={Range=3..,Time=20}] if block ~-2 ~ ~ minecraft:air positioned ~-2 ~ ~ run function medabots_server:blocks/press_wall/extend/x
execute if entity @s[scores={Range=4..,Time=20}] unless block ~-3 ~ ~ minecraft:air run tag @s remove extend
execute if entity @s[scores={Range=4..,Time=30}] if block ~-3 ~ ~ minecraft:air run playsound medabots_server:block.press_wall block @a ~ ~ ~ 1 0.6
execute if entity @s[scores={Range=4..,Time=30}] if block ~-3 ~ ~ minecraft:air positioned ~-3 ~ ~ run function medabots_server:blocks/press_wall/extend/x
execute if entity @s[scores={Range=5..,Time=30}] unless block ~-4 ~ ~ minecraft:air run tag @s remove extend
execute if entity @s[scores={Range=5..,Time=40}] if block ~-4 ~ ~ minecraft:air run playsound medabots_server:block.press_wall block @a ~ ~ ~ 1 0.8
execute if entity @s[scores={Range=5..,Time=40}] if block ~-4 ~ ~ minecraft:air positioned ~-4 ~ ~ run function medabots_server:blocks/press_wall/extend/x
execute if entity @s[scores={Range=6..,Time=40}] unless block ~-5 ~ ~ minecraft:air run tag @s remove extend
execute if entity @s[scores={Range=6..,Time=50}] if block ~-5 ~ ~ minecraft:air run playsound medabots_server:block.press_wall block @a ~ ~ ~ 1 1
execute if entity @s[scores={Range=6..,Time=50}] if block ~-5 ~ ~ minecraft:air positioned ~-5 ~ ~ run function medabots_server:blocks/press_wall/extend/x
execute if entity @s[scores={Range=7..,Time=50}] unless block ~-6 ~ ~ minecraft:air run tag @s remove extend
execute if entity @s[scores={Range=7..,Time=60}] if block ~-6 ~ ~ minecraft:air run playsound medabots_server:block.press_wall block @a ~ ~ ~ 1 1.2
execute if entity @s[scores={Range=7..,Time=60}] if block ~-6 ~ ~ minecraft:air positioned ~-6 ~ ~ run function medabots_server:blocks/press_wall/extend/x
execute if entity @s[scores={Range=8..,Time=60}] unless block ~-7 ~ ~ minecraft:air run tag @s remove extend
execute if entity @s[scores={Range=8..,Time=70}] if block ~-7 ~ ~ minecraft:air run playsound medabots_server:block.press_wall block @a ~ ~ ~ 1 1.4
execute if entity @s[scores={Range=8..,Time=70}] if block ~-7 ~ ~ minecraft:air positioned ~-7 ~ ~ run function medabots_server:blocks/press_wall/extend/x
execute if entity @s[scores={Range=9..,Time=70}] unless block ~-8 ~ ~ minecraft:air run tag @s remove extend
execute if entity @s[scores={Range=9..,Time=80}] if block ~-8 ~ ~ minecraft:air run playsound medabots_server:block.press_wall block @a ~ ~ ~ 1 1.6
execute if entity @s[scores={Range=9..,Time=80}] if block ~-8 ~ ~ minecraft:air positioned ~-8 ~ ~ run function medabots_server:blocks/press_wall/extend/x
execute if entity @s[scores={Range=10..,Time=80}] unless block ~-9 ~ ~ minecraft:air run tag @s remove extend
execute if entity @s[scores={Range=10..,Time=90}] if block ~-9 ~ ~ minecraft:air run playsound medabots_server:block.press_wall block @a ~ ~ ~ 1 1.8
execute if entity @s[scores={Range=10..,Time=90}] if block ~-9 ~ ~ minecraft:air positioned ~-9 ~ ~ run function medabots_server:blocks/press_wall/extend/x