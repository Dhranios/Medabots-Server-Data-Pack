#############################
# Medabots Server Functions #
#       Tick Function       #
#############################

# Fly couse checker
# Something about it doesn't make it work...
#function medabots_server:stage/fly_course_checker


# Medabot model animations
execute as @e[tag=medabot_model,tag=!cutscene] at @e[scores={MedabotNr=0..},tag=!medabot_model] if score @s MedabotNr = @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run function medabots_server:animations/medabot/main
execute as @e[tag=medabot_model,tag=cutscene] at @e[scores={MedabotNr=0..},tag=cutscene,tag=!medabot_model] if score @s MedabotNr = @e[distance=..0.1,tag=cutscene,limit=1] MedabotNr run function medabots_server:animations/medabot/cutscene_main
execute as @e[tag=medabot_model,tag=cutscene] run function medabots_server:dialog/main

# Functions that run on every player
execute as @a at @s run function medabots_server:any_player

# Functions that run on every non-player entity
execute as @e[type=!minecraft:player,tag=!no_processing,tag=!medabot_model] at @s run function medabots_server:any_non_player

# Make the random server messages appear
function medabots_server:other/random_message

# Make the sound cooldown cool down
scoreboard players remove @e[scores={Sound=1..}] Sound 1

# Teleport action-floor-spawning area effect clouds up
execute as @e[tag=no_processing] at @s run function medabots_server:stage/action_floor_move

# Kill every entity that is tagged as dead
kill @e[tag=dead]
tag @a[tag=dead] remove dead