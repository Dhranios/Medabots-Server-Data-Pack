# Make the destroy attack do something
execute if entity @s[tag=destroy] run function medabots_server:medaparts/destroy_stand

# Who else but Mr. Referee has to referee the battles?
execute if entity @s[tag=mr_referee] run function medabots_server:other/mr_referee

# Any armor stand that exists for a short amount of time
execute if entity @s[tag=life_time] run function medabots_server:any_life_time_stand

# Make mirrors act
execute if entity @s[tag=mirror] run function medabots_server:blocks/mirror

# Medabot model animations
execute as @s[tag=medabot_model] run function medabots_server:animations/medabot