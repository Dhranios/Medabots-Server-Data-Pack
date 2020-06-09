#############################
# Medabots Server Functions #
#       Tick Function       #
#############################

# Functions that run on every player
execute as @a at @s run function medabots_server:main/players

# Functions that run on every non-player entity
execute as @e[type=!minecraft:player,tag=!model_piece] at @s run function medabots_server:main/non_players

# Model piece tick
execute as @e[type=minecraft:armor_stand,tag=model_piece,tag=!disabled] run function medabots_server:animations/model_piece