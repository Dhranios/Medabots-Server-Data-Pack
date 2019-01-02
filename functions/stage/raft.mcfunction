# Blow away
execute at @s[scores={Moving=0}] positioned ~-2 ~1 ~ at @e[distance=..2,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 1
execute at @s[scores={Moving=0}] positioned ~ ~1 ~-2 at @e[distance=..2,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 2
execute at @s[scores={Moving=0}] positioned ~2 ~1 ~ at @e[distance=..2,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 3
execute at @s[scores={Moving=0}] positioned ~ ~1 ~2 at @e[distance=..2,type=minecraft:creeper,tag=wave] run scoreboard players set @s Moving 4

# Reset if this move is valid
tag @s remove valid_move
execute if entity @s[scores={Moving=1}] if block ~1 ~ ~ minecraft:water run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~1 ~ ~ minecraft:bubble_column run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~1 minecraft:water run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~1 minecraft:bubble_column run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-1 ~ ~ minecraft:water run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-1 ~ ~ minecraft:bubble_column run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-1 minecraft:water run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-1 minecraft:bubble_column run tag @s add valid_move

# Move if this move is valid
scoreboard players set @s[tag=!valid_move] Moving 0
teleport @s[scores={Moving=1}] ~1 ~ ~
teleport @s[scores={Moving=2}] ~ ~ ~1
teleport @s[scores={Moving=3}] ~-1 ~ ~
teleport @s[scores={Moving=4}] ~ ~ ~-1

# Move entities on top
execute if entity @s[scores={Moving=1}] positioned ~ ~1 ~ run teleport @e[distance=..1,tag=hostile] ~1 ~ ~
execute if entity @s[scores={Moving=2}] positioned ~ ~1 ~ run teleport @e[distance=..1,tag=hostile] ~ ~ ~1
execute if entity @s[scores={Moving=3}] positioned ~ ~1 ~ run teleport @e[distance=..1,tag=hostile] ~-1 ~ ~
execute if entity @s[scores={Moving=4}] positioned ~ ~1 ~ run teleport @e[distance=..1,tag=hostile] ~ ~ ~-1

# Remove old block
execute at @s[scores={Moving=1..}] run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:water replace minecraft:acacia_planks
execute at @s[scores={Moving=1..}] run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:water replace minecraft:water

# Place block
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:acacia_planks replace minecraft:water

# Crush enemies
execute if entity @s[scores={Moving=1..}] run tag @a[distance=..0.5,tag=hostile] add had_death
execute if entity @s[scores={Moving=1..}] as @a[distance=..0.5,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=1..}] run tag @e[distance=..0.5,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=1..}] as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 run tag @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 run tag @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}

# Stop moving after having moved
scoreboard players set @s[scores={Moving=1..}] Moving 0

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:acacia_planks
kill @s[tag=dead]