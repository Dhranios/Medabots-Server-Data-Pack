# Move with
execute rotated ~ 0 run teleport @s ^ ^-1.2 ^-0.31 ~ 0

execute if entity @s[tag=walking] run function medabots_server:animations/guard/walking/back_legs
execute if entity @s[tag=!walking] run data merge entity @s {Pose:{LeftArm:[0.001f,0.001f,0.001f],RightArm:[0.001f,0.001f,0.001f]}}