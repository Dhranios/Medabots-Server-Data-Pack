# Make the destroy attack do something
execute if entity @s[tag=destroy] run function medabots_server:items/medapart/destroy/stand

# Make the laser attack do something
execute if entity @s[tag=laser,tag=source] run function medabots_server:items/medapart/laser/attack

# Who else but Mr. Referee has to referee the battles?
execute if entity @s[tag=mr_referee] run function medabots_server:dialog/mr_referee

# Make mirrors act
execute if entity @s[tag=mirror,tag=!disabled] run function medabots_server:blocks/mirror

# Make custom stage missions act
execute if entity @s[tag=mission,tag=!disabled] run function medabots_server:blocks/entities/mission

# Medabot model animations
execute as @s[tag=model_piece] run function medabots_server:animations/model_piece

kill @s[tag=life_time]