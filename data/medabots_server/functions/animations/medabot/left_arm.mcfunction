# Guarding
data merge entity @s[tag=!guarding,tag=was_guarding] {Pose:{Head:[0.0f,0.0f,0.001f]}}
data merge entity @s[tag=guarding] {Pose:{Head:[-90.0f,48.0f,0.001f]}}

# Move with
teleport @s[tag=!sneak_pos,tag=!guarding] ^.25 ^.32 ^ ~ ~
teleport @s[tag=sneak_pos,tag=!guarding] ^.25 ^.26 ^ ~ ~
teleport @s[tag=!sneak_pos,tag=guarding] ^.2 ^.32 ^ ~ ~
teleport @s[tag=sneak_pos,tag=guarding] ^.2 ^.26 ^ ~ ~

# Equipped arms
tag @s[tag=left_arm_selected] add selected
data merge entity @s[tag=!selected,tag=was_selected] {Pose:{Head:[0.0f,0.0f,0.001f]}}

# Look up/down
execute if entity @s[tag=selected] unless entity @s[nbt={Pose:{Head:[0.0f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}
execute if entity @s[tag=selected] store result score #temp Time run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[1] 1
execute if entity @s[tag=selected] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= #70 Constants
execute if entity @s[tag=selected] store result entity @s Rotation[0] float 1 run data get entity @e[tag=this_medabot,tag=head,limit=1] Rotation[0] 1
scoreboard players reset #temp Time

# Walk animation
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s[tag=!sneak_pos] {Pose:{Head:[0.0f,0.0f,0.001f]}}
data merge entity @s[tag=!edge_grabbing,tag=was_edge_grabbing] {Pose:{Head:[0.0f,0.0f,0.001f]}}
data merge entity @s[tag=!selected,tag=!guarding,tag=!walking,tag=!running,tag=!sneaking,tag=!edge_grabbing,tag=!dancing,tag=!carried] {Pose:{Head:[0.0f,0.0f,0.001f]}}
data merge entity @s[tag=!selected,tag=carried] {Pose:{Head:[-140.0f,0.0f,0.001f]}}
tag @s[tag=walk_animation_other_way,tag=!walking,tag=!running,tag=!sneaking] remove walk_animation_other_way
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[tag=!selected,tag=!guarding,tag=has_legs,tag=!edge_grabbing,tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/walking/left_arm_with_legs
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[tag=!selected,tag=!guarding,tag=!has_legs,tag=!edge_grabbing,tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/walking/left_arm
data merge entity @s[tag=!selected,tag=edge_grabbing] {Pose:{Head:[-100.0f,0.0f,0.001f]}}
execute if entity @s[tag=dancing] run function medabots_server:animations/medabot/dancing/left_arm