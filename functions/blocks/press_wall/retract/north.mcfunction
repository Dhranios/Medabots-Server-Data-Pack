execute if entity @s[scores={Range=2..,Time=0}] if block ~ ~ ~-1 minecraft:quartz_pillar run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.2
execute if entity @s[scores={Range=2..,Time=0}] if block ~ ~ ~-1 minecraft:quartz_pillar positioned ~ ~ ~-1 run function medabots_server:blocks/press_wall/retract
execute if entity @s[scores={Range=3..,Time=10}] if block ~ ~ ~-2 minecraft:quartz_pillar run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.4
execute if entity @s[scores={Range=3..,Time=10}] if block ~ ~ ~-2 minecraft:quartz_pillar positioned ~ ~ ~-2 run function medabots_server:blocks/press_wall/retract
execute if entity @s[scores={Range=4..,Time=20}] if block ~ ~ ~-3 minecraft:quartz_pillar run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.6
execute if entity @s[scores={Range=4..,Time=20}] if block ~ ~ ~-3 minecraft:quartz_pillar positioned ~ ~ ~-3 run function medabots_server:blocks/press_wall/retract
execute if entity @s[scores={Range=5..,Time=30}] if block ~ ~ ~-4 minecraft:quartz_pillar run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 0.8
execute if entity @s[scores={Range=5..,Time=30}] if block ~ ~ ~-4 minecraft:quartz_pillar positioned ~ ~ ~-4 run function medabots_server:blocks/press_wall/retract
execute if entity @s[scores={Range=6..,Time=40}] if block ~ ~ ~-5 minecraft:quartz_pillar run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1
execute if entity @s[scores={Range=6..,Time=40}] if block ~ ~ ~-5 minecraft:quartz_pillar positioned ~ ~ ~-5 run function medabots_server:blocks/press_wall/retract
execute if entity @s[scores={Range=7..,Time=50}] if block ~ ~ ~-6 minecraft:quartz_pillar run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.2
execute if entity @s[scores={Range=7..,Time=50}] if block ~ ~ ~-6 minecraft:quartz_pillar positioned ~ ~ ~-6 run function medabots_server:blocks/press_wall/retract
execute if entity @s[scores={Range=8..,Time=60}] if block ~ ~ ~-7 minecraft:quartz_pillar run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.4
execute if entity @s[scores={Range=8..,Time=60}] if block ~ ~ ~-7 minecraft:quartz_pillar positioned ~ ~ ~-7 run function medabots_server:blocks/press_wall/retract
execute if entity @s[scores={Range=9..,Time=70}] if block ~ ~ ~-8 minecraft:quartz_pillar run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.6
execute if entity @s[scores={Range=9..,Time=70}] if block ~ ~ ~-8 minecraft:quartz_pillar positioned ~ ~ ~-8 run function medabots_server:blocks/press_wall/retract
execute if entity @s[scores={Range=10..,Time=80}] if block ~ ~ ~-9 minecraft:quartz_pillar run playsound medabots_server:block.press_wall.move block @a ~ ~ ~ 1 1.8
execute if entity @s[scores={Range=10..,Time=80}] if block ~ ~ ~-9 minecraft:quartz_pillar positioned ~ ~ ~-9 run function medabots_server:blocks/press_wall/retract