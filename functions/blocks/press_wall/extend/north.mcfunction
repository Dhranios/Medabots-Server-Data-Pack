execute if entity @s[scores={Range=2..,Time=1}] unless block ~ ~ ~-1 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=2..,Time=10}] if block ~ ~ ~-1 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.2
execute if entity @s[scores={Range=2..,Time=10}] if block ~ ~ ~-1 minecraft:air positioned ~ ~ ~-1 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=3..,Time=10}] unless block ~ ~ ~-2 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=3..,Time=20}] if block ~ ~ ~-2 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.4
execute if entity @s[scores={Range=3..,Time=20}] if block ~ ~ ~-2 minecraft:air positioned ~ ~ ~-2 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=4..,Time=20}] unless block ~ ~ ~-3 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=4..,Time=30}] if block ~ ~ ~-3 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.6
execute if entity @s[scores={Range=4..,Time=30}] if block ~ ~ ~-3 minecraft:air positioned ~ ~ ~-3 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=5..,Time=30}] unless block ~ ~ ~-4 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=5..,Time=40}] if block ~ ~ ~-4 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.8
execute if entity @s[scores={Range=5..,Time=40}] if block ~ ~ ~-4 minecraft:air positioned ~ ~ ~-4 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=6..,Time=40}] unless block ~ ~ ~-5 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=6..,Time=50}] if block ~ ~ ~-5 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1
execute if entity @s[scores={Range=6..,Time=50}] if block ~ ~ ~-5 minecraft:air positioned ~ ~ ~-5 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=7..,Time=50}] unless block ~ ~ ~-6 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=7..,Time=60}] if block ~ ~ ~-6 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.2
execute if entity @s[scores={Range=7..,Time=60}] if block ~ ~ ~-6 minecraft:air positioned ~ ~ ~-6 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=8..,Time=60}] unless block ~ ~ ~-7 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=8..,Time=70}] if block ~ ~ ~-7 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.4
execute if entity @s[scores={Range=8..,Time=70}] if block ~ ~ ~-7 minecraft:air positioned ~ ~ ~-7 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=9..,Time=70}] unless block ~ ~ ~-8 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=9..,Time=80}] if block ~ ~ ~-8 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.6
execute if entity @s[scores={Range=9..,Time=80}] if block ~ ~ ~-8 minecraft:air positioned ~ ~ ~-8 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=10..,Time=80}] unless block ~ ~ ~-9 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=10..,Time=90}] if block ~ ~ ~-9 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.8
execute if entity @s[scores={Range=10..,Time=90}] if block ~ ~ ~-9 minecraft:air positioned ~ ~ ~-9 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=11..,Time=90}] unless block ~ ~ ~-10 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=11..,Time=100}] if block ~ ~ ~-10 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ 1 1.8
execute if entity @s[scores={Range=11..,Time=100}] if block ~ ~ ~-10 minecraft:air positioned ~ ~ ~-10 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=12..,Time=100}] unless block ~ ~ ~-11 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=12..,Time=110}] if block ~ ~ ~-11 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ 1 1.8
execute if entity @s[scores={Range=12..,Time=110}] if block ~ ~ ~-11 minecraft:air positioned ~ ~ ~-11 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=13..,Time=110}] unless block ~ ~ ~-12 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=13..,Time=120}] if block ~ ~ ~-12 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ 1 1.8
execute if entity @s[scores={Range=13..,Time=120}] if block ~ ~ ~-12 minecraft:air positioned ~ ~ ~-12 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=14..,Time=120}] unless block ~ ~ ~-13 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=14..,Time=130}] if block ~ ~ ~-13 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ 1 1.8
execute if entity @s[scores={Range=14..,Time=130}] if block ~ ~ ~-13 minecraft:air positioned ~ ~ ~-13 run function medabots_server:blocks/press_wall/extend/z
execute if entity @s[scores={Range=15..,Time=130}] unless block ~ ~ ~-14 minecraft:air run tag @s add extending_blocked
execute if entity @s[scores={Range=15..,Time=140}] if block ~ ~ ~-14 minecraft:air run playsound medabots_server:block.press_wall.move block @a ~ 1 1.8
execute if entity @s[scores={Range=15..,Time=140}] if block ~ ~ ~-14 minecraft:air positioned ~ ~ ~-14 run function medabots_server:blocks/press_wall/extend/z