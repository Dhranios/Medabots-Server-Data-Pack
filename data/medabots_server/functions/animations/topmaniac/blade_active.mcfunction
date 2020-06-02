data modify entity @s[tag=!detached] Pose.Head[0] set value 0.0f
execute if entity @s[tag=!detached,tag=!roll_start,tag=!roll,tag=!roll_stop] run function medabots_server:animations/topmaniac/idle