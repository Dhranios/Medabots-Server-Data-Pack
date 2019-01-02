# New rubberobos need scores
execute unless entity @s[scores={Time=-200..}] store result score @s HomeRot run data get entity @s Rotation[0]
execute unless entity @s[scores={Time=-200..}] store result score @s HomeX run data get entity @s Pos[0]
execute unless entity @s[scores={Time=-200..}] store result score @s HomeY run data get entity @s Pos[1]
execute unless entity @s[scores={Time=-200..}] store result score @s HomeZ run data get entity @s Pos[2]
execute unless entity @s[scores={Time=-200..}] run scoreboard players set @s Time 0

# Respawn after death
execute if entity @s[tag=respawning,scores={Time=0}] run playsound medabots_server:entity.rubberobo.respawn neutral @a ~ ~2 ~
teleport @s[tag=respawning,scores={Time=0}] ~ ~2 ~
data merge entity @s[tag=respawning,scores={Time=0}] {NoGravity:0b,Invulnerable:0b}
tag @s[tag=respawning,scores={Time=0}] remove respawning

# Hurt means turn
tag @s[nbt={HurtTime:10s}] add hurt
execute store result score @s Damage run data get entity @s AbsorptionAmount
scoreboard players operation @s Damage -= @s Health
execute if entity @s[tag=hurt] run playsound medabots_server:entity.rubberobo.hurt neutral @a ~ ~ ~ 1
tag @s[tag=hurt,tag=!walking] add walking
tag @s[tag=hurt,tag=walk_1_block] remove walk_1_block
tag @s[tag=hurt,tag=toggle_turn_left] remove toggle_turn_left
tag @s[tag=hurt,tag=follow_wall] remove follow_wall
tag @s[tag=hurt,tag=see_goal_area] remove see_goal_area
tag @s[tag=hurt,tag=seen_goal_area] remove seen_goal_area
tag @s[tag=hurt,tag=!turn_left,scores={Time=41..}] add toggle_turn_left
tag @s[tag=hurt,tag=turn_left,tag=!toggle_turn_left,scores={Time=41..}] remove turn_left
tag @s[tag=toggle_turn_left] add turn_left
tag @s[tag=toggle_turn_left] remove downed
execute align xz run teleport @s[tag=hurt,y_rotation=-45..45] ~0.5 ~ ~0.5 0 ~
execute align xz run teleport @s[tag=hurt,y_rotation=-135..-45] ~0.5 ~ ~0.5 -90 ~
execute align xz run teleport @s[tag=hurt,y_rotation=135..-135] ~0.5 ~ ~0.5 -180 ~
execute align xz run teleport @s[tag=hurt,y_rotation=45..135] ~0.5 ~ ~0.5 90 ~
scoreboard players set @s[tag=hurt,scores={Damage=-20..}] Time 60
scoreboard players set @s[tag=hurt,scores={Damage=..-20}] Time 100
tag @s[tag=hurt,tag=downed,scores={Damage=..-20}] remove downed
tag @s[tag=hurt] remove hurt
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
execute if entity @s[nbt={AbsorptionAmount:0.0f},tag=!dead] run function medabots_server:stage/rubberobo_reset
execute if block ~ ~ ~ minecraft:water run function medabots_server:stage/rubberobo_reset
execute if block ~ ~ ~ minecraft:lava run function medabots_server:stage/rubberobo_reset
execute if block ~ ~ ~1 minecraft:black_wool run function medabots_server:stage/rubberobo_reset
execute if block ~ ~ ~-1 minecraft:black_wool run function medabots_server:stage/rubberobo_reset
execute if block ~1 ~ ~ minecraft:black_wool run function medabots_server:stage/rubberobo_reset
execute if block ~-1 ~ ~ minecraft:black_wool run function medabots_server:stage/rubberobo_reset

# Search for the goal
execute if entity @s[tag=!see_goal_area,scores={Time=0}] rotated ~ 0 run function medabots_server:stage/rubberobo_search_goal
scoreboard players set @s[scores={GoalSearch=1..}] GoalSearch 0

# If I see the goal, walk towards it, quietly
execute if entity @s[tag=walking,tag=see_goal_area] run playsound medabots_server:entity.rubberobo.see_goal_area neutral @a ~ ~ ~ 1
tag @s[tag=walking,tag=see_goal_area] remove walking
scoreboard players set @s[tag=see_goal_area,tag=!seen_goal_area,scores={Time=0}] Time 20
tag @s[tag=see_goal_area,tag=!seen_goal_area,scores={Time=20}] add seen_goal_area

# Walk 1 block after turning to follow wall
scoreboard players set @s[scores={Time=0},tag=walk_1_block,tag=downed] Time 16
scoreboard players set @s[scores={Time=0},tag=walk_1_block,tag=!downed] Time 8
execute if entity @s[scores={Time=1},tag=walk_1_block,tag=!turn_left] rotated ~ 0 if block ^1 ^ ^ minecraft:air if block ^1 ^1 ^ minecraft:air run tag @s remove follow_wall
execute if entity @s[scores={Time=1},tag=walk_1_block,tag=turn_left] rotated ~ 0 if block ^-1 ^ ^ minecraft:air if block ^-1 ^1 ^ minecraft:air run tag @s remove follow_wall
tag @s[scores={Time=1},tag=walk_1_block] remove walk_1_block

# Dead end?
tag @s[tag=walking,scores={Time=0}] add downing
execute if entity @s[scores={Time=0}] rotated ~ 0 if block ^ ^ ^0.6 minecraft:air if block ^ ^1 ^0.6 minecraft:air run tag @s remove downing
execute if entity @s[scores={Time=0}] rotated ~ 0 if block ^-1 ^ ^ minecraft:air if block ^-1 ^1 ^ minecraft:air run tag @s remove downing
execute if entity @s[scores={Time=0}] rotated ~ 0 if block ^1 ^ ^ minecraft:air if block ^1 ^1 ^ minecraft:air run tag @s remove downing
execute if entity @s[scores={Time=0}] rotated ~ 0 if block ^ ^ ^0.6 minecraft:barrier if block ^ ^1 ^0.6 minecraft:barrier run tag @s remove downing
execute if entity @s[scores={Time=0}] rotated ~ 0 if block ^-1 ^ ^ minecraft:barrier if block ^-1 ^1 ^ minecraft:barrier run tag @s remove downing
execute if entity @s[scores={Time=0}] rotated ~ 0 if block ^1 ^ ^ minecraft:barrier if block ^1 ^1 ^ minecraft:barrier run tag @s remove downing

# Dead end!
tag @s[tag=downing] add downed
execute if entity @s[tag=downing] run playsound medabots_server:entity.rubberobo.downing neutral @a ~ ~ ~ 1
tag @s[tag=downing] remove walking
scoreboard players set @s[tag=downing] Time 160
tag @s[tag=downing] remove downing

# Turn if there's a wall in front of me
execute if entity @s[tag=walking,scores={Time=0},tag=!walk_1_block,tag=!ignore_footstool] rotated ~ 0 if block ^ ^ ^0.6 minecraft:barrier if block ^ ^1 ^0.6 minecraft:barrier run tag @s add ignore_footstool
execute if entity @s[tag=walking,scores={Time=0},tag=!walk_1_block,tag=!ignore_footstool] rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air run tag @s add follow_wall
execute if entity @s[tag=walking,scores={Time=0},tag=!walk_1_block,tag=!ignore_footstool] rotated ~ 0 unless block ^ ^1 ^0.6 minecraft:air run tag @s add follow_wall
execute if entity @s[tag=walking,scores={Time=0},tag=!walk_1_block,tag=!ignore_footstool] rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air run scoreboard players set @s Time 20
execute if entity @s[tag=walking,scores={Time=0},tag=!walk_1_block,tag=!ignore_footstool] rotated ~ 0 unless block ^ ^1 ^0.6 minecraft:air run scoreboard players set @s Time 20
tag @s[tag=ignore_footstool] remove ignore_footstool

# Follow the wall on my side
execute if entity @s[tag=walking,scores={Time=0},tag=!turn_left,tag=follow_wall,tag=!walk_1_block] rotated ~ 0 if block ^1 ^ ^ minecraft:air if block ^1 ^1 ^ minecraft:air run scoreboard players set @s Time -20
execute if entity @s[tag=walking,scores={Time=0},tag=turn_left,tag=follow_wall,tag=!walk_1_block] rotated ~ 0 if block ^-1 ^ ^ minecraft:air if block ^-1 ^1 ^ minecraft:air run scoreboard players set @s Time -20
execute if entity @s[tag=walking,scores={Time=-20},tag=!turn_left,tag=follow_wall] rotated ~ 0 if block ^1 ^ ^ minecraft:air if block ^1 ^1 ^ minecraft:air run tag @s add walk_1_block
execute if entity @s[tag=walking,scores={Time=-20},tag=turn_left,tag=follow_wall] rotated ~ 0 if block ^-1 ^ ^ minecraft:air if block ^-1 ^1 ^ minecraft:air run tag @s add walk_1_block
execute if entity @s[tag=walking,scores={Time=0},tag=!turn_left,tag=follow_wall,tag=!walk_1_block] rotated ~ 0 if block ^1 ^ ^ minecraft:barrier if block ^1 ^1 ^ minecraft:barrier run scoreboard players set @s Time -20
execute if entity @s[tag=walking,scores={Time=0},tag=turn_left,tag=follow_wall,tag=!walk_1_block] rotated ~ 0 if block ^-1 ^ ^ minecraft:barrier if block ^-1 ^1 ^ minecraft:barrier run scoreboard players set @s Time -20
execute if entity @s[tag=walking,scores={Time=-20},tag=!turn_left,tag=follow_wall] rotated ~ 0 if block ^1 ^ ^ minecraft:barrier if block ^1 ^1 ^ minecraft:barrier run tag @s add walk_1_block
execute if entity @s[tag=walking,scores={Time=-20},tag=turn_left,tag=follow_wall] rotated ~ 0 if block ^-1 ^ ^ minecraft:barrier if block ^-1 ^1 ^ minecraft:barrier run tag @s add walk_1_block


# Not downed after a while
tag @s[tag=downed,tag=!walking,scores={Time=0}] remove downed

# Move forward when walking
teleport @s[tag=walking,tag=downed,scores={Time=1..},tag=walk_1_block] ^ ^ ^0.0625
teleport @s[tag=walking,tag=!downed,scores={Time=1..},tag=walk_1_block] ^ ^ ^0.125
teleport @s[tag=walking,tag=downed,scores={Time=0}] ^ ^ ^0.0625
teleport @s[tag=walking,tag=!downed,scores={Time=0}] ^ ^ ^0.125
teleport @s[tag=seen_goal_area,scores={Time=0}] ^ ^ ^0.125
execute if entity @s[tag=walking,tag=!downed,scores={Time=0..40}] run playsound medabots_server:entity.rubberobo.walk neutral @a ~ ~ ~ 1
execute if entity @s[tag=walking,tag=downed,scores={Time=0..40}] run playsound medabots_server:entity.rubberobo.walk_downed neutral @a ~ ~ ~ 1
execute if entity @s[scores={Time=1..40},tag=!downed,tag=!see_goal_area,tag=!respawning] run playsound medabots_server:entity.rubberobo.walk neutral @a ~ ~ ~ 1
execute if entity @s[scores={Time=1..40},tag=downed,tag=!see_goal_area,tag=!respawning] run playsound medabots_server:entity.rubberobo.walk_downed neutral @a ~ ~ ~ 1

# At the goal
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run tag @s add dead

# Stage cleanup
teleport @s[tag=dead] ~ -100 ~
kill @s[tag=dead]

# Fall in holes, lava, water and craters
execute if block ~ ~-1 ~ minecraft:air run teleport @s ~ ~-0.2 ~
execute if block ~ ~-1 ~ minecraft:water run teleport @s ~ ~-0.2 ~
execute if block ~ ~-1 ~ minecraft:lava run teleport @s ~ ~-0.2 ~
execute if block ~ ~-1 ~ minecraft:black_carpet run teleport @s ~ ~-0.2 ~

# Reset scores
execute store result score @s Health run data get entity @s AbsorptionAmount
scoreboard players set @s Damage 0