#############################
# Medabots Server Functions #
#       Tick Function       #
#############################

# Functions that run on every player
execute as @a at @s run function medabots_server:any_player

# Functions that run on every non-player entity
execute as @e[type=!minecraft:player,tag=!no_processing] at @s run function medabots_server:any_non_player

# Make the sound cooldown cool down
scoreboard players remove @e[scores={Sound=1..}] Sound 1

# Teleport action-floor-spawning area effect clouds up
execute as @e[tag=no_processing] at @s run function medabots_server:blocks/action_floor/move

# Kill every entity that is tagged as dead
kill @e[tag=dead]
tag @a[tag=dead] remove dead