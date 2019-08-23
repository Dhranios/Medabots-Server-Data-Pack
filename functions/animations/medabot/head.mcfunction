execute if entity @s[tag=!separated] run function medabots_server:animations/medabot/separate_chest

# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s ^ ^.1 ^-.25
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,limit=1] Rotation[0] 100

# Look up/down
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result entity @s Pose.Head[0] float 0.8 run data get entity @e[tag=this_medabot,limit=1] Rotation[1] 1

tag @s[tag=sneak_pos] remove sneak_pos