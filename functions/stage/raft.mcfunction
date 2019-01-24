# Blow away
execute if entity @s[scores={Moving=0}] run function medabots_server:stage/raft_hit

# Reset if this move is valid
execute if entity @s[scores={Moving=1..}] run function medabots_server:stage/raft_valid_move

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
execute if entity @s[scores={Moving=1..}] run function medabots_server:stage/raft_crush

# Stop moving after having moved
scoreboard players set @s[scores={Moving=1..}] Moving 0

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:acacia_planks
kill @s[tag=dead]