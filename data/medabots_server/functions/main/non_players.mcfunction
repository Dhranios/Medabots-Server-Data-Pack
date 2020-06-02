execute if entity @s[tag=action_floor_moving,tag=!disabled] run function medabots_server:blocks/action_floor/move
execute if entity @s[tag=!action_floor_moving,tag=no_ticking] run function medabots_server:main/not_ticking
execute if entity @s[tag=!action_floor_moving,tag=!no_ticking] run function medabots_server:main/ticking_non_players
scoreboard players remove @s[scores={Sound=1..}] Sound 1
scoreboard players reset @s[tag=dead]
kill @s[tag=dead]