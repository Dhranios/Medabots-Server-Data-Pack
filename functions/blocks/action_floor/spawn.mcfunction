# Sound!
execute if entity @s[scores={Time=1}] run playsound medabots_server:block.action_floor block @a ~ ~ ~ 1

# Show a glow
execute if entity @s[scores={Time=1}] run setblock ~ ~ ~ minecraft:snow[layers=4]
execute if entity @s[scores={Time=1}] run setblock ~ ~1 ~ minecraft:barrier

# Actions
execute if entity @s[scores={Time=50},tag=guard] run function medabots_server:blocks/action_floor/guard
execute if entity @s[scores={Time=50},tag=cannon] run function medabots_server:blocks/action_floor/cannon
execute if entity @s[scores={Time=50},tag=ice_block] run function medabots_server:blocks/action_floor/ice_block
execute if entity @s[scores={Time=50},tag=round_stone] run function medabots_server:blocks/action_floor/round_stone
execute if entity @s[scores={Time=50},tag=balloon_bomb] run function medabots_server:blocks/action_floor/balloon_bomb
execute if entity @s[scores={Time=50},tag=bomb] run function medabots_server:blocks/action_floor/bomb
execute if entity @s[scores={Time=72},tag=cannon] run setblock ~ ~ ~ minecraft:iron_block
execute if entity @s[scores={Time=72},tag=cannon] run setblock ~ ~2 ~ minecraft:barrier
execute if entity @s[scores={Time=100}] as @e[distance=..0.7,tag=no_processing] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={Time=100}] run scoreboard players operation @e[distance=..0.7,tag=no_processing] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100}] run tag @e[distance=..0.7,tag=no_processing] remove no_processing

# Reset
execute if entity @s[scores={Time=100}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:snow
execute if entity @s[scores={Time=100}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:barrier
tag @s[scores={Time=100},tag=1_medallar_cent] remove 1_medallar_cent
tag @s[scores={Time=100},tag=2_medallar_cents] remove 2_medallar_cents
tag @s[scores={Time=100},tag=4_medallar_cents] remove 4_medallar_cents
tag @s[scores={Time=100},tag=6_medallar_cents] remove 6_medallar_cents
tag @s[scores={Time=100},tag=10_medallar_cents] remove 10_medallar_cents
tag @s[scores={Time=100},tag=20_medallar_cents] remove 20_medallar_cents
scoreboard players set @s[scores={Time=100}] Time -100