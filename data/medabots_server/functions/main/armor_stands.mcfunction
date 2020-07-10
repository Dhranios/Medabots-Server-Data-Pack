# Make the destroy attack do something
execute if entity @s[tag=destroy] run function medabots_server:items/medapart/destroy/stand

# Make the last known location time-out
execute if entity @s[tag=last_known_location] run function medabots_server:main/last_known_location

# Make the laser attack do something
execute if entity @s[tag=beam,tag=source] run function medabots_server:items/medapart/beam/attack
execute if entity @s[tag=laser,tag=source] run function medabots_server:items/medapart/laser/attack

# Who else but Mr. Referee has to referee the battles?
execute if entity @s[tag=mr_referee] run function medabots_server:dialog/mr_referee

# Make stage objects do something
execute if entity @s[tag=mirror,tag=!disabled] run function medabots_server:blocks/mirror
execute if entity @s[tag=mission,tag=!disabled] run function medabots_server:entities/mission
execute if entity @s[tag=accelerator,tag=!disabled] run function medabots_server:blocks/accelerator
execute if entity @s[tag=fan,tag=!disabled] run function medabots_server:blocks/fan
execute if entity @s[tag=laser_trap,tag=!disabled] run function medabots_server:blocks/laser_trap
execute if entity @s[tag=door,tag=!disabled] run function medabots_server:blocks/door
execute if entity @s[tag=floor_switch,tag=!disabled] run function medabots_server:blocks/floor_switch
execute if entity @s[tag=alarm,tag=!disabled] run function medabots_server:blocks/alarm
execute if entity @s[tag=action_floor,tag=!disabled] run function medabots_server:blocks/action_floor
execute if entity @s[tag=algae,tag=!disabled] run function medabots_server:blocks/algae
execute if entity @s[tag=drawbridge,tag=!disabled] run function medabots_server:blocks/drawbridge
execute if entity @s[tag=spring_wall,tag=!disabled] run function medabots_server:blocks/spring_wall
execute if entity @s[tag=hammer_punch,tag=!disabled] run function medabots_server:blocks/hammer_punch
execute if entity @s[tag=press_wall,tag=!second_half,tag=!disabled] run function medabots_server:blocks/press_wall
tag @s[tag=press_wall,tag=second_half,tag=dead] remove dead

# Inventory entities shouldn't exist post-processing
tag @s[tag=inventory] add dead
tag @s[tag=life_time,tag=!last_known_location] add dead