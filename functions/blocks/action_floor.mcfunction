# Is this action floor powered?
execute if score @s PowerAmount >= @s PowerNeeded run tag @s add powered
execute unless score @s PowerAmount >= @s PowerNeeded run tag @s remove powered

# Only activate when nothing's on top, and the current entity's gone
execute if entity @s[scores={Time=0},tag=!no_spawning,tag=powered,tag=!dead] run function medabots_server:blocks/action_floor/can_spawn_check
scoreboard players add @s[scores={Time=1..},tag=!dead] Time 1
scoreboard players add @s[scores={Time=0},tag=!no_spawning,tag=powered,tag=!dead] Time 1
scoreboard players add @s[scores={Time=..-1}] Time 1
tag @s[tag=no_spawning] remove no_spawning

# Spawn
execute if entity @s[scores={Time=1..}] run function medabots_server:blocks/action_floor/spawn

# Remove when cleaning up stage
execute if entity @s[tag=dead] run function medabots_server:blocks/action_floor/clean_up
scoreboard players set @e[tag=custom_stage] PowerAmount 0