# Move with
execute rotated ~ 0 run teleport @s ^ ^-.38 ^-.25
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[distance=..0.1,tag=cutscene,tag=!medabot_model,limit=1] Rotation[0] 100

# Look up/down
execute unless entity @s[nbt={Pose:{Head:[0.0f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}
execute store result entity @s Pose.Head[0] float 0.3 run data get entity @e[distance=..0.1,tag=cutscene,tag=!medabot_model,limit=1] Rotation[1] 1