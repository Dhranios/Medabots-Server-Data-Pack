execute if entity @s[tag=!separated] run function medabots_server:animations/medabot/separate_chest

# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s ^ ^.1 ^-.25

# Look left/right
execute if entity @e[tag=edge_grabbing,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add edge_grabbing
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,limit=1] Rotation[0] 100
execute if entity @e[tag=this_medabot,tag=chest,y_rotation=-180] at @s run teleport @s[y_rotation=0..120] ~ ~ ~ 120 ~
execute if entity @e[tag=this_medabot,tag=chest,y_rotation=-180] at @s run teleport @s[y_rotation=-120..0] ~ ~ ~ -120 ~
execute if entity @e[tag=this_medabot,tag=chest,y_rotation=-90] at @s run teleport @s[y_rotation=-30..90] ~ ~ ~ -30 ~
execute if entity @e[tag=this_medabot,tag=chest,y_rotation=-90] at @s run teleport @s[y_rotation=90..-150] ~ ~ ~ -150 ~
execute if entity @e[tag=this_medabot,tag=chest,y_rotation=0] at @s run teleport @s[y_rotation=-180..-60] ~ ~ ~ -60 ~
execute if entity @e[tag=this_medabot,tag=chest,y_rotation=0] at @s run teleport @s[y_rotation=60..-180] ~ ~ ~ 60 ~
execute if entity @e[tag=this_medabot,tag=chest,y_rotation=90] at @s run teleport @s[y_rotation=-90..30] ~ ~ ~ 30 ~
execute if entity @e[tag=this_medabot,tag=chest,y_rotation=90] at @s run teleport @s[y_rotation=150..-90] ~ ~ ~ 150 ~


# Look up/down
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result entity @s Pose.Head[0] float 0.8 run data get entity @e[tag=this_medabot,limit=1] Rotation[1] 1

tag @s[tag=edge_grabbing] remove edge_grabbing
tag @s[tag=sneak_pos] remove sneak_pos