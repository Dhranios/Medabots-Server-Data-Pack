# Sound!
execute if entity @s[scores={Time=1}] run playsound medabots_server:block.action_floor block @a ~ ~ ~ 1

# Show a glow
execute if entity @s[scores={Time=1}] run setblock ~ ~ ~ minecraft:snow[layers=4]
execute if entity @s[scores={Time=1}] run setblock ~ ~1 ~ minecraft:barrier

# Actions
execute if entity @s[scores={Time=50}] run function medabots_server:blocks/action_floor/spawn_50
execute if entity @s[scores={Time=72},tag=cannon] run setblock ~ ~ ~ minecraft:iron_block
execute if entity @s[scores={Time=72},tag=cannon] run setblock ~ ~2 ~ minecraft:barrier
execute if entity @s[scores={Time=100}] run function medabots_server:blocks/action_floor/spawn_100