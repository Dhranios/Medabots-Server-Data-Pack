# Push me
execute if entity @s[scores={Moving=0}] run function medabots_server:entities/ice_block/hit

# Melt me
execute if entity @s[scores={Moving=0}] run function medabots_server:entities/ice_block/melt

# Remove remains if dying
execute if block ~ ~ ~ minecraft:lava run tag @s add dead
execute if block ~ ~ ~ minecraft:water[level=0] unless block ~ ~1 ~ minecraft:water run tag @s add freezing
execute if block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:water[level=0] run tag @s add dead
execute if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run tag @s add dead
execute if block ~1 ~ ~ minecraft:black_wool run tag @s add dead
execute if block ~-1 ~ ~ minecraft:black_wool run tag @s add dead
execute if block ~ ~ ~1 minecraft:black_wool run tag @s add dead
execute if block ~ ~ ~-1 minecraft:black_wool run tag @s add dead

# Prevent jumping over if standing still
fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if entity @s[scores={Moving=0},tag=!freezing,tag=!dead] run fill ~ ~1 ~ ~ ~1 ~ minecraft:black_stained_glass replace minecraft:air

# Reset if this is a valid move
execute if entity @s[scores={Moving=1..}] run function medabots_server:entities/ice_block/valid_move

# Keep moving only if on ice
scoreboard players set @s[tag=!valid_move,scores={Moving=0..}] Moving 0
tag @s[scores={Moving=1..}] add has_moved
execute if entity @s[scores={Moving=1..}] if block ~ ~-1 ~ #minecraft:ice run tag @s add on_ice

# Move
execute at @s run teleport @s[scores={Moving=1}] ~0.2 ~ ~
execute at @s run teleport @s[scores={Moving=2}] ~ ~ ~0.2
execute at @s run teleport @s[scores={Moving=3}] ~-0.2 ~ ~
execute at @s run teleport @s[scores={Moving=4}] ~ ~ ~-0.2
execute unless entity @s[scores={Steps=0..}] run scoreboard players set @s Steps 0
scoreboard players add @s[scores={Moving=1..,Steps=0..4}] Steps 1

# Form thin ice in water
execute if entity @s[tag=freezing] run function medabots_server:entities/ice_block/freeze

# Stop moving if not on ice
scoreboard players set @s[scores={Moving=1..,Steps=5},tag=!on_ice] Moving 0
tag @s remove on_ice
scoreboard players set @s[scores={Moving=0}] Steps 0

# Fall
execute if entity @s[scores={Time=1}] if block ~ ~-0.2 ~ #medabots_server:entities/can_fall_in run playsound medabots_server:block.moving_block.fall block @a ~ ~ ~ 1
execute if block ~ ~-0.2 ~ #medabots_server:entities/can_fall_in at @s run fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if block ~ ~-0.2 ~ #medabots_server:entities/can_fall_in at @s run teleport @s ~ ~-0.2 ~
execute if entity @s[y=0,dy=1] run tag @s add dead

# Move sound
scoreboard players add @s[scores={Moving=1..}] Time 1
scoreboard players set @s[scores={Moving=0}] Time 0
scoreboard players set @s[scores={Time=20..}] Time 0
execute if entity @s[scores={Time=1}] run playsound medabots_server:block.moving_block.move block @a ~ ~ ~ 1

# Crush enemies
execute if entity @s[scores={Moving=1..}] run function medabots_server:entities/ice_block/crush

# Prevent model and collision from messing up
execute as @e[distance=..0.4,tag=ice_block,type=minecraft:shulker] run data merge entity @s {Rotation:[0.0d,0.0d]}
execute as @e[distance=..0.4,tag=ice_block,type=minecraft:shulker] run effect give @s minecraft:invisibility 1000000 0 true
execute as @e[distance=..0.4,tag=ice_block,type=minecraft:shulker] run data merge entity @s {Health:20.0f,Peek:1b,AbsorptionAmount:1000.0f}

# Remove model and collision if dead
execute if entity @s[tag=dead] run function medabots_server:entities/ice_block/death

# Position correcion
execute unless block ~ ~-0.2 ~ #medabots_server:entities/can_fall_in at @s positioned ~ ~0.6 ~ align y run teleport @s ~ ~ ~
execute if entity @s[scores={Moving=0},tag=has_moved] at @s align xz run teleport @s ~0.5 ~ ~0.5
tag @s[scores={Moving=0},tag=has_moved] remove has_moved
execute unless entity @s[scores={Moving=0..}] run scoreboard players set @s Moving 0