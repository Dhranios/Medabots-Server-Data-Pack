# Push me
execute if entity @s[scores={Moving=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Moving 1
execute if entity @s[scores={Moving=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Moving 2
execute if entity @s[scores={Moving=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Moving 3
execute if entity @s[scores={Moving=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Moving 4
execute if entity @s[scores={Moving=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Moving 1
execute if entity @s[scores={Moving=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Moving 2
execute if entity @s[scores={Moving=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Moving 3
execute if entity @s[scores={Moving=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Moving 4
execute if entity @s[scores={Moving=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Moving 1
execute if entity @s[scores={Moving=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Moving 2
execute if entity @s[scores={Moving=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Moving 3
execute if entity @s[scores={Moving=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Moving 4

# Remove remains when it dies
execute if block ~ ~ ~ minecraft:lava run tag @s add dead
execute if block ~ ~ ~ minecraft:water run tag @s add dead
execute if block ~1 ~ ~ minecraft:black_wool run tag @s add dead
execute if block ~-1 ~ ~ minecraft:black_wool run tag @s add dead
execute if block ~ ~ ~1 minecraft:black_wool run tag @s add dead
execute if block ~ ~ ~-1 minecraft:black_wool run tag @s add dead

# Prevent jumping over if standing still
fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if entity @s[scores={Moving=0},tag=!dead] run fill ~ ~1 ~ ~ ~1 ~ minecraft:black_stained_glass replace minecraft:air

# Reset if this move is valid
tag @s remove valid_move
execute if entity @s[scores={Moving=1}] unless blocks ~0.5 ~ ~ ~0.5 ~ ~ ~1 ~ ~ masked run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.5 ~ ~ if entity @e[distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.5 ~ ~ if entity @e[distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] unless blocks ~ ~ ~0.5 ~ ~ ~0.5 ~ ~ ~1 masked run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.5 if entity @e[distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.5 if entity @e[distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] unless blocks ~-0.5 ~ ~ ~-0.5 ~ ~ ~-1 ~ ~ masked run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.5 ~ ~ if entity @e[distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.5 ~ ~ if entity @e[distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] unless blocks ~ ~ ~-0.5 ~ ~ ~-0.5 ~ ~ ~-1 masked run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.5 if entity @e[distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.5 if entity @e[distance=..0.4,tag=ice_block] run tag @s remove valid_move

# Move if this move is valid
scoreboard players set @s[tag=!valid_move,scores={Moving=1..}] Moving 0
execute at @s run teleport @s[scores={Moving=1}] ~0.2 ~ ~
execute at @s run teleport @s[scores={Moving=2}] ~ ~ ~0.2
execute at @s run teleport @s[scores={Moving=3}] ~-0.2 ~ ~
execute at @s run teleport @s[scores={Moving=4}] ~ ~ ~-0.2

# Fall
execute if entity @s[scores={Time=1}] if block ~ ~-0.2 ~ minecraft:air run playsound medabots_server:block.moving_block.fall block @a ~ ~ ~ 1
execute if block ~ ~-0.2 ~ minecraft:air at @s run fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if block ~ ~-0.2 ~ minecraft:water at @s run fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if block ~ ~-0.2 ~ minecraft:lava at @s run fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if block ~ ~-0.2 ~ minecraft:black_carpet at @s run fill ~ ~-1 ~ ~ ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if block ~ ~-0.2 ~ minecraft:air at @s run teleport @s ~ ~-0.2 ~
execute if block ~ ~-0.2 ~ minecraft:water at @s run teleport @s ~ ~-0.2 ~
execute if block ~ ~-0.2 ~ minecraft:lava at @s run teleport @s ~ ~-0.2 ~
execute if block ~ ~-0.2 ~ minecraft:black_carpet at @s run teleport @s ~ ~-0.2 ~
execute if entity @s[y=0,dy=1] run tag @s add dead

# Move sound
scoreboard players add @s[scores={Moving=1..}] Time 1
scoreboard players set @s[scores={Moving=0}] Time 0
scoreboard players set @s[scores={Time=20..}] Time 0
execute if entity @s[scores={Time=1}] run playsound medabots_server:block.moving_block.move block @a ~ ~ ~ 1

# Crush enemies
execute if entity @s[scores={Moving=1..}] run tag @a[distance=..0.5,tag=hostile] add had_death
execute if entity @s[scores={Moving=1..}] as @a[distance=..0.5,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=1..}] run tag @e[distance=..0.5,tag=hostile,tag=!round_stone,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=1..}] as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!round_stone,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 run tag @e[distance=..0.7,tag=hostile,tag=!round_stone,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!round_stone,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 run tag @e[distance=..0.7,tag=hostile,tag=!round_stone,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}

# Remove model and collision if dead
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] run teleport @e[distance=..0.4,tag=round_stone] ~ -1000 ~
execute if entity @s[tag=dead] at @s run teleport @e[distance=..0.4,tag=round_stone] ~ -1000 ~
execute if entity @s[tag=dead] run tag @e[distance=..0.4,tag=round_stone] add dead
execute if entity @s[tag=dead] at @s run tag @e[distance=..0.4,tag=round_stone] add dead
execute if entity @s[tag=dead] run fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:black_stained_glass

# Prevent model and collision from rotating
execute as @e[distance=..0.4,tag=round_stone] run data merge entity @s {Rotation:[0.0d,0.0d]}
execute as @e[distance=..0.4,tag=round_stone,type=minecraft:shulker] run effect give @s minecraft:invisibility 1000000 0 true
execute as @e[distance=..0.4,tag=round_stone,type=minecraft:shulker] run data merge entity @s {Invulnerable:1b}
execute as @e[distance=..0.4,tag=round_stone,type=minecraft:falling_block] run data merge entity @s {Time:1,DropItem:0b}

# Position correcion (else it floats above the ground)
execute unless block ~ ~-0.2 ~ minecraft:air unless block ~ ~-0.2 ~ minecraft:water unless block ~ ~-0.2 ~ minecraft:lava at @s positioned ~ ~1 ~ align y run teleport @s ~ ~-0.37 ~
execute if entity @s[scores={Moving=0}] at @s align xz run teleport @s ~0.5 ~ ~0.5
execute unless entity @s[scores={Moving=0..}] run teleport @s ~ ~-0.75 ~
execute unless entity @s[scores={Moving=0..}] run scoreboard players set @s Moving 0

# Refresh clients
data merge entity @s {Air:1}
data merge entity @s {Air:0}