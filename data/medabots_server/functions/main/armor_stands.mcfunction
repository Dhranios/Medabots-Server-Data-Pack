# Make the destroy attack do something
execute if entity @s[tag=destroy] run function medabots_server:items/medapart/destroy/stand

# Make the last known location time-out
execute if entity @s[tag=last_known_location] run function medabots_server:main/last_known_location

# Make the laser attack do something
execute if entity @s[tag=laser,tag=source] run function medabots_server:items/medapart/laser/attack

# Who else but Mr. Referee has to referee the battles?
execute if entity @s[tag=mr_referee] run function medabots_server:dialog/mr_referee

# Make stage objects do something
execute if entity @s[tag=mirror,tag=!disabled] run function medabots_server:blocks/mirror
execute if entity @s[tag=mission,tag=!disabled] run function medabots_server:entities/mission
execute if entity @s[tag=accelerator,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/accelerator
execute if entity @s[tag=fan,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/fan
execute if entity @s[tag=laser_trap,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/laser_trap
execute if entity @s[tag=door,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/door
execute if entity @s[tag=floor_switch,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/floor_switch
execute if entity @s[tag=alarm,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/alarm

# Inventory entities shouldn't exist post-processing
tag @s[tag=inventory] add dead
tag @s[tag=life_time,tag=!last_known_location] add dead