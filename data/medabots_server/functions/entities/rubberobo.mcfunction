# Respawn after death
execute if entity @s[tag=respawning,scores={Time=0}] run function medabots_server:entities/rubberobo/respawn

# Hurt means turn
execute if entity @s[nbt=!{HurtTime:0s},tag=!hurt] run function medabots_server:entities/rubberobo/hurt
tag @s[nbt={HurtTime:0s},tag=hurt] remove hurt

execute align xz run teleport @s[scores={Time=1..40},tag=!respawning,tag=!turn_left,tag=walking,tag=!walk_1_block] ~0.5 ~ ~0.5 ~4.5 ~
execute align xz run teleport @s[scores={Time=1..40},tag=!respawning,tag=turn_left,tag=walking,tag=!walk_1_block] ~0.5 ~ ~0.5 ~-4.5 ~
execute align xz run teleport @s[scores={Time=-20..-1},tag=!respawning,tag=!turn_left,tag=walking] ~0.5 ~ ~0.5 ~-4.5 ~
execute align xz run teleport @s[scores={Time=-20..-1},tag=!respawning,tag=turn_left,tag=walking] ~0.5 ~ ~0.5 ~4.5 ~
execute align xz run teleport @s[scores={Time=0},y_rotation=-45..45,tag=!respawning,tag=walking] ~0.5 ~ ~0.5 0 ~
execute align xz run teleport @s[scores={Time=0},y_rotation=-135..-45,tag=!respawning,tag=walking] ~0.5 ~ ~0.5 -90 ~
execute align xz run teleport @s[scores={Time=0},y_rotation=135..-135,tag=!respawning,tag=walking] ~0.5 ~ ~0.5 -180 ~
execute align xz run teleport @s[scores={Time=0},y_rotation=45..135,tag=!respawning,tag=walking] ~0.5 ~ ~0.5 90 ~

# Tick down timer
scoreboard players remove @s[scores={Time=1..}] Time 1
scoreboard players add @s[scores={Time=..-1}] Time 1
scoreboard players remove @s[scores={Time=40},tag=downed] Time 20

# Only then remove the toggle tag for the animation
tag @s[tag=toggle_turn_left,scores={Time=..40}] remove toggle_turn_left

# Rubberobo death
execute if entity @s[nbt={AbsorptionAmount:0.0f},tag=!dead] run function medabots_server:entities/rubberobo/reset
execute at @s if block ~ ~ ~ minecraft:water run function medabots_server:entities/rubberobo/reset
execute at @s if block ~ ~ ~ minecraft:lava run function medabots_server:entities/rubberobo/reset
execute at @s if block ~ ~ ~1 minecraft:black_wool run function medabots_server:entities/rubberobo/reset
execute at @s if block ~ ~ ~-1 minecraft:black_wool run function medabots_server:entities/rubberobo/reset
execute at @s if block ~1 ~ ~ minecraft:black_wool run function medabots_server:entities/rubberobo/reset
execute at @s if block ~-1 ~ ~ minecraft:black_wool run function medabots_server:entities/rubberobo/reset

# Search for the goal
execute if entity @s[tag=!see_goal_area,scores={Time=0}] rotated as @s rotated ~ 0 run function medabots_server:entities/rubberobo/search_goal
scoreboard players set @s[scores={GoalSearch=1..}] GoalSearch 0

# If I see the goal, walk towards it, quietly
execute if entity @s[tag=walking,tag=see_goal_area] run playsound medabots_server:entity.rubberobo.see_goal_area neutral @a ~ ~ ~ 1
execute if entity @s[tag=walking,tag=see_goal_area] run stopsound @a neutral medabots_server:entity.rubberobo.walk
execute if entity @s[tag=walking,tag=see_goal_area] run stopsound @a neutral medabots_server:entity.rubberobo.walk_downed
tag @s[tag=walking,tag=see_goal_area] remove walking
scoreboard players set @s[tag=see_goal_area,tag=!seen_goal_area,scores={Time=0}] Time 20
tag @s[tag=see_goal_area,tag=!seen_goal_area,scores={Time=20}] add seen_goal_area

# Walk 1 block after turning to follow wall
scoreboard players set @s[scores={Time=0},tag=walk_1_block,tag=downed] Time 16
scoreboard players set @s[scores={Time=0},tag=walk_1_block,tag=!downed] Time 8
execute if entity @s[scores={Time=1},tag=walk_1_block,tag=!turn_left] rotated ~ 0 positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s remove follow_wall
execute if entity @s[scores={Time=1},tag=walk_1_block,tag=turn_left] rotated ~ 0 positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s remove follow_wall
tag @s[scores={Time=1},tag=walk_1_block] remove walk_1_block

# Dead end?
execute if entity @s[scores={Time=0}] run function medabots_server:entities/rubberobo/dead_end

# Turn if there's a wall in front of me
execute if entity @s[tag=walking,scores={Time=0},tag=!walk_1_block] run function medabots_server:entities/rubberobo/wall

# Follow the wall on my side
execute if entity @s[tag=walking,scores={Time=0},tag=!turn_left,tag=follow_wall,tag=!walk_1_block] rotated ~ 0 positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run scoreboard players set @s Time -20
execute if entity @s[tag=walking,scores={Time=0},tag=turn_left,tag=follow_wall,tag=!walk_1_block] rotated ~ 0 positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run scoreboard players set @s Time -20
execute if entity @s[tag=walking,scores={Time=-20},tag=!turn_left,tag=follow_wall] rotated ~ 0 positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s add walk_1_block
execute if entity @s[tag=walking,scores={Time=-20},tag=turn_left,tag=follow_wall] rotated ~ 0 positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s add walk_1_block
execute if entity @s[tag=walking,scores={Time=0},tag=!turn_left,tag=follow_wall,tag=!walk_1_block] rotated ~ 0 positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:barrier unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run scoreboard players set @s Time -20
execute if entity @s[tag=walking,scores={Time=0},tag=turn_left,tag=follow_wall,tag=!walk_1_block] rotated ~ 0 positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:barrier unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run scoreboard players set @s Time -20
execute if entity @s[tag=walking,scores={Time=-20},tag=!turn_left,tag=follow_wall] rotated ~ 0 positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:barrier unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s add walk_1_block
execute if entity @s[tag=walking,scores={Time=-20},tag=turn_left,tag=follow_wall] rotated ~ 0 positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:barrier unless entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s add walk_1_block

# Not downed after a while
tag @s[tag=downed,tag=!walking,scores={Time=0}] remove downed

# Move forward when walking
teleport @s[tag=walking,tag=downed,scores={Time=1..},tag=walk_1_block] ^ ^ ^0.0625
teleport @s[tag=walking,tag=!downed,scores={Time=1..},tag=walk_1_block] ^ ^ ^0.125
teleport @s[tag=walking,tag=downed,scores={Time=0}] ^ ^ ^0.0625
teleport @s[tag=walking,tag=!downed,scores={Time=0}] ^ ^ ^0.125
teleport @s[tag=seen_goal_area,scores={Time=0}] ^ ^ ^0.125
execute if entity @s[tag=walking,tag=!downed,scores={Time=0..40,Sound=0}] run playsound medabots_server:entity.rubberobo.walk neutral @a ~ ~ ~ 1
execute if entity @s[tag=walking,tag=!downed,scores={Time=0..40,Sound=0}] run scoreboard players set @s Sound 80
execute if entity @s[tag=walking,tag=downed,scores={Time=0..40,Sound=0}] run playsound medabots_server:entity.rubberobo.walk_downed neutral @a ~ ~ ~ 1
execute if entity @s[tag=walking,tag=downed,scores={Time=0..40,Sound=0}] run scoreboard players set @s Sound 65
execute if entity @s[scores={Time=1..40,Sound=0},tag=!downed,tag=!see_goal_area,tag=!respawning] run playsound medabots_server:entity.rubberobo.walk neutral @a ~ ~ ~ 1
execute if entity @s[scores={Time=1..40,Sound=0},tag=!downed,tag=!see_goal_area,tag=!respawning] run scoreboard players set @s Sound 80
execute if entity @s[scores={Time=1..40,Sound=0},tag=downed,tag=!see_goal_area,tag=!respawning] run playsound medabots_server:entity.rubberobo.walk_downed neutral @a ~ ~ ~ 1
execute if entity @s[scores={Time=1..40,Sound=0},tag=downed,tag=!see_goal_area,tag=!respawning] run scoreboard players set @s Sound 65

# At the goal
execute if block ~ ~-1 ~ minecraft:bricks if block ~ ~3 ~ minecraft:brick_slab run tag @s add dead

# Stage cleanup
teleport @s[tag=dead] ~ -100 ~

# Fall in holes, lava, water and craters
execute at @s positioned ~ ~-0.2 ~ if block ~ ~ ~ #medabots_server:entities/can_fall_in positioned ~ ~-0.5 ~ unless entity @e[tag=raft,distance=..0.7] at @s run teleport @s ~ ~-0.2 ~

# Reset scores
execute store result score @s Health run data get entity @s AbsorptionAmount
scoreboard players set @s Damage 0