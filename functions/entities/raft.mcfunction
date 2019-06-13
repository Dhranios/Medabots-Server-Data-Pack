# Blow away
execute if entity @s[scores={Moving=0}] run function medabots_server:entities/raft/hit

# Reset if this move is valid
execute if entity @s[scores={Moving=1..}] run function medabots_server:entities/raft/valid_move

# Move if this move is valid
scoreboard players set @s[tag=!valid_move,scores={Moving=0..,Steps=0}] Moving 0
tag @s[scores={Moving=1..}] add has_moved
execute at @s run teleport @s[scores={Moving=1}] ~0.2 ~ ~
execute at @s run teleport @s[scores={Moving=2}] ~ ~ ~0.2
execute at @s run teleport @s[scores={Moving=3}] ~-0.2 ~ ~
execute at @s run teleport @s[scores={Moving=4}] ~ ~ ~-0.2
scoreboard players add @s[scores={Moving=1..,Steps=0..4}] Steps 1

# Move entities on top
execute if entity @s[scores={Moving=1..}] positioned ~ ~1 ~ as @e[distance=..0.6,tag=cannon] at @s run fill ~ ~2 ~ ~ ~2 ~ minecraft:air replace minecraft:barrier
execute if entity @s[scores={Moving=1..}] positioned ~ ~1 ~ as @e[distance=..0.6,tag=cannon] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:iron_block
execute if entity @s[scores={Moving=1..,Steps=3}] positioned ~ ~1 ~ run scoreboard players operation @e[distance=..0.6,tag=pot] Moving = @s Moving
execute if entity @s[scores={Moving=1}] positioned ~ ~1 ~ as @e[distance=..0.6,tag=hostile] at @s run teleport @s ~0.2 ~ ~
execute if entity @s[scores={Moving=2}] positioned ~ ~1 ~ as @e[distance=..0.6,tag=hostile] at @s run teleport @s ~ ~ ~0.2
execute if entity @s[scores={Moving=3}] positioned ~ ~1 ~ as @e[distance=..0.6,tag=hostile] at @s run teleport @s ~-0.2 ~ ~
execute if entity @s[scores={Moving=4}] positioned ~ ~1 ~ as @e[distance=..0.6,tag=hostile] at @s run teleport @s ~ ~ ~-0.2

# Crush enemies
execute if entity @s[scores={Moving=1..}] run function medabots_server:entities/raft/crush

# Stop moving after having moved
scoreboard players set @s[scores={Moving=1..,Steps=5}] Moving 0
scoreboard players set @s[scores={Moving=0}] Steps 0

# Remove model and collision if dead
execute if entity @s[tag=dead] run function medabots_server:entities/raft/death

# Prevent model and collision from messing up
execute as @e[distance=..0.4,tag=raft] run data merge entity @s {Rotation:[0.0d,0.0d]}
execute as @e[distance=..0.4,tag=raft,type=minecraft:shulker] run effect give @s minecraft:invisibility 1000000 0 true
execute as @e[distance=..0.4,tag=raft,type=minecraft:shulker] run data merge entity @s {Invulnerable:1b}
execute as @e[distance=..0.4,tag=raft,type=minecraft:falling_block] run data merge entity @s {Time:1,DropItem:0b}

# Position correcion
execute at @s[tag=has_moved] positioned ~ ~1 ~ align y run teleport @s ~ ~-0.375 ~
tag @s[tag=has_moved] remove has_moved
execute if entity @s[scores={Moving=0}] at @s align xz run teleport @s ~0.5 ~ ~0.5
execute unless entity @s[scores={Moving=0..}] run teleport @s ~ ~-0.75 ~
execute unless entity @s[scores={Moving=0..}] run tag @s add has_moved
execute unless entity @s[scores={Moving=0..}] run scoreboard players set @s Moving 0

# Refresh clients
data merge entity @s {Air:1}
data merge entity @s {Air:0}