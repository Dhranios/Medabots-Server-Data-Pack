# Make the destroy attack do something
execute if entity @s[tag=destroy] run function medabots_server:items/medapart/destroy/stand

# Who else but Mr. Referee has to referee the battles?
execute if entity @s[tag=mr_referee] run function medabots_server:dialog/mr_referee

# Make mirrors act
execute if entity @s[tag=mirror] run function medabots_server:blocks/mirror

# Medabot model animations
execute as @s[tag=medabot_model] run function medabots_server:animations/medabot

kill @s[tag=life_time]