# Only activate when nothing's on top, and the current entity's gone
execute if entity @s[scores={Time=0},tag=!no_spawning,tag=enabled,tag=!dead] run function medabots_server:blocks/action_floor/can_spawn_check
scoreboard players add @s[scores={Time=1..},tag=!dead] Time 1
scoreboard players add @s[scores={Time=0},tag=!no_spawning,tag=enabled,tag=!dead] Time 1
scoreboard players add @s[scores={Time=..-1}] Time 1
tag @s[tag=no_spawning] remove no_spawning

# Spawn
execute if entity @s[scores={Time=1..}] run function medabots_server:blocks/action_floor/spawn

# Remove when cleaning up stage
execute if entity @s[tag=dead] run function medabots_server:blocks/action_floor/clean_up