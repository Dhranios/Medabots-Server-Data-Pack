# Move with
execute at @e[tag=this_guard,limit=1] rotated ~ 0 run teleport @s ^ ^-1.2 ^-0.31

# Look left/right
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_guard,limit=1] Rotation[0] 100
execute unless entity @s[nbt={Pose:{RightArm:[0.001f]}}] run data merge entity @s {Pose:{RightArm:[0.001f,0.001f,0.001f]}}
execute unless entity @s[nbt={Pose:{LeftArm:[0.001f]}}] run data merge entity @s {Pose:{LeftArm:[0.001f,0.001f,0.001f]}}

execute if entity @e[tag=this_guard,tag=walking,limit=1] run function medabots_server:animations/guard/walking/back_legs
execute if entity @e[tag=this_guard,tag=!walking,limit=1] run data merge entity @s {Pose:{LeftArm:[0.001f,0.001f,0.001f],RightArm:[0.001f,0.001f,0.001f]}}