# Move with
execute at @e[type=minecraft:creeper,tag=this_guard,limit=1] rotated ~ 0 run teleport @s ^ ^-1.2 ^

# Look left/right
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[type=minecraft:creeper,tag=this_guard,limit=1] Rotation[0] 100
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}