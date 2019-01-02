# Move with
execute if entity @a[distance=..0.1,tag=hostile,scores={Sneaking=1..}] run tag @s add sneak_pos
execute rotated ~ 0 run teleport @s[tag=!sneak_pos] ^ ^-.38 ^-.25
execute rotated ~ 0 run teleport @s[tag=sneak_pos] ^ ^-.48 ^-.25
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[distance=..0.1,tag=hostile,limit=1] Rotation[0] 100

# Look up/down
execute unless entity @s[nbt={Pose:{Head:[0.0f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}
execute store result entity @s Pose.Head[0] float 0.3 run data get entity @e[distance=..0.1,tag=hostile,limit=1] Rotation[1] 1

tag @s[tag=sneak_pos] remove sneak_pos