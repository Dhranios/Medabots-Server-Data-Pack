# Is this action floor powered?
execute if score @s PowerAmount >= @s PowerNeeded run tag @s add powered
execute unless score @s PowerAmount >= @s PowerNeeded run tag @s remove powered

# Only activate when nothing's on top, and the current entity's gone
execute if entity @s[scores={Time=0},tag=!entity_exists,tag=powered,tag=!dead] run function medabots_server:blocks/action_floor/can_spawn_check
scoreboard players add @s[scores={Time=1..},tag=!dead] Time 1
scoreboard players add @s[scores={Time=0},tag=!no_spawning,tag=!entity_exists,tag=powered,tag=!dead] Time 1
scoreboard players add @s[scores={Time=..-1}] Time 1
tag @s[tag=no_spawning] remove no_spawning

# Spawn
execute if entity @s[scores={Time=1..},tag=!dead] run function medabots_server:blocks/action_floor/spawn

# Remove when cleaning up stage
execute if entity @s[tag=dead] run function medabots_server:blocks/action_floor/clean_up

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object