# Move with
execute at @e[tag=this_cannon,limit=1] run teleport @s ~ ~-0.2 ~

# Look around
execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=this_cannon,limit=1] Rotation[0] 1
execute store result entity @s Pose.Head[0] float 1 run data get entity @e[tag=this_cannon,limit=1] Rotation[1] 1