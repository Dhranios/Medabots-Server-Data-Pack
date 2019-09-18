# Move with
execute at @e[tag=this_guard,limit=1] rotated ~ 0 run teleport @s ^ ^-1.01 ^

# Look left/right
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_guard,limit=1] Rotation[0] 100
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}

execute if entity @e[tag=this_guard,tag=attack,limit=1] run function medabots_server:animations/guard/attack
execute if entity @e[tag=this_guard,tag=hurt,limit=1] run function medabots_server:animations/guard/hurt