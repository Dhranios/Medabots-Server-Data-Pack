# Blow away
execute if entity @s[scores={Moving=0}] run function medabots_server:entities/balloon_bomb/hit
execute if entity @s[scores={ActionFloorNr=0..}] run function medabots_server:blocks/action_floor/prevent_spawning

# Burst
execute if entity @s[tag=burst] run function medabots_server:entities/balloon_bomb/burst

# Reset if this move is valid
execute if entity @s[scores={Moving=1..}] run function medabots_server:entities/balloon_bomb/valid_move

# Move if this move is valid
execute unless entity @s[scores={Steps=0..}] run scoreboard players set @s[scores={Moving=1..}] Steps 0
scoreboard players set @s[tag=!valid_move,scores={Moving=0..,Steps=0}] Moving 0
tag @s[scores={Moving=1..}] add has_moved
execute at @s run teleport @s[scores={Moving=1}] ~0.2 ~ ~
execute at @s run teleport @s[scores={Moving=2}] ~ ~ ~0.2
execute at @s run teleport @s[scores={Moving=3}] ~-0.2 ~ ~
execute at @s run teleport @s[scores={Moving=4}] ~ ~ ~-0.2
scoreboard players add @s[scores={Moving=1..,Steps=0..4}] Steps 1

# Prevent small entities from going under
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air replace minecraft:black_stained_glass
execute if entity @s[scores={Moving=0},tag=!dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:black_stained_glass replace minecraft:air

# Crush enemies
execute if entity @s[scores={Moving=1..}] run function medabots_server:entities/balloon_bomb/crush

# Stop moving after having moved
scoreboard players set @s[scores={Moving=1..,Steps=5}] Moving 0
scoreboard players set @s[scores={Moving=0}] Steps 0

# Remove model and collision if dead
execute if entity @s[tag=dead] run function medabots_server:entities/balloon_bomb/death

# Prevent model and collision from messing up
execute as @e[distance=..0.4,tag=balloon_bomb] run data merge entity @s {Rotation:[0.0d,0.0d]}
execute as @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] run effect give @s minecraft:invisibility 1000000 0 true
execute if entity @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker,nbt={HurtTime:9s},tag=should_burst] run tag @s add burst
execute as @e[distance=..0.4,tag=balloon_bomb,tag=should_burst] run tag @s remove should_burst
execute as @e[distance=..0.4,tag=balloon_bomb,tag=potential_burst] run tag @s add should_burst
execute as @e[distance=..0.4,tag=balloon_bomb,tag=potential_burst] run tag @s remove potential_burst
execute as @e[distance=..0.4,tag=balloon_bomb,type=minecraft:shulker] run data merge entity @s {Health:20.0f,Peek:1b,AbsorptionAmount:1000.0f}
execute as @e[distance=..0.4,tag=balloon_bomb,type=minecraft:falling_block] run data merge entity @s {Time:1,DropItem:0b}

# Position correcion
execute at @s[tag=has_moved] positioned ~ ~0.8 ~ align y run teleport @s ~ ~-0.375 ~
execute if entity @s[scores={Moving=0},tag=has_moved] at @s align xz run teleport @s ~0.5 ~ ~0.5
tag @s[scores={Moving=0},tag=has_moved] remove has_moved
execute unless entity @s[scores={Moving=0..}] run tag @s add has_moved
execute unless entity @s[scores={Moving=0..}] run scoreboard players set @s Moving 0

# Refresh clients
data merge entity @s {Air:1}
data merge entity @s {Air:0}