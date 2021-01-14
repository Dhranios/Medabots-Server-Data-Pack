# Guarding
data modify entity @s[tag=!guarding,tag=was_guarding] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!guarding,tag=was_guarding] Pose.Head[1] set value 0.001f
data modify entity @s[tag=guarding] Pose.Head[0] set value -90.0f
data modify entity @s[tag=guarding] Pose.Head[1] set value 48.0f

# Move with
teleport @s[tag=!sneak_pos,tag=!guarding] ^.25 ^.32 ^ ~ ~
teleport @s[tag=sneak_pos,tag=!guarding] ^.25 ^.26 ^ ~ ~
teleport @s[tag=!sneak_pos,tag=guarding] ^.2 ^.32 ^ ~ ~
teleport @s[tag=sneak_pos,tag=guarding] ^.2 ^.26 ^ ~ ~

# Equipped arms
tag @s[tag=left_arm_selected] add selected
data modify entity @s[tag=!selected,tag=was_selected] Pose.Head[0] set value 0.001f

# Look up/down
execute if entity @s[tag=selected] store result score #temp Time run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[1] 1
execute if entity @s[tag=selected] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= #70 Constants
execute if entity @s[tag=selected] store result entity @s Rotation[0] float 1 run data get entity @e[tag=this_medabot,tag=head,limit=1] Rotation[0] 1
scoreboard players reset #temp Time
execute if entity @s[tag=!swimming,tag=!dancing] run function medabots_server:animations/medabot/idle/left_arm

# Walk animation
data modify entity @s[tag=!edge_grabbing,tag=was_edge_grabbing] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!selected,tag=carried] Pose.Head[0] set value -140.0f
data modify entity @s[tag=!selected,tag=edge_grabbing] Pose.Head[0] set value -100.0f
data modify entity @s[tag=was_sneaking,tag=!sneaking,tag=!walking,tag=!running,tag=!swimming] Pose.Head[0] set value 0.001f
data modify entity @s[tag=was_walking,tag=!walking,tag=!sneaking,tag=!running,tag=!swimming] Pose.Head[0] set value 0.001f
data modify entity @s[tag=was_running,tag=!running,tag=!sneaking,tag=!walking,tag=!swimming] Pose.Head[0] set value 0.001f
data modify entity @s[tag=was_swimming,tag=!sneaking,tag=!walking,tag=!running,tag=!swimming] Pose.Head[0] set value 0.001f
data modify entity @s[tag=was_swimming,tag=!swimming] Pose.Head[1] set value 0.001f
execute if entity @s[tag=dancing] run function medabots_server:animations/medabot/dancing/left_arm

execute if entity @s[tag=sneaking,tag=!selected,tag=!guarding,tag=!edge_grabbing,tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/sneaking/left_arm
execute if entity @s[tag=walking,tag=!selected,tag=!guarding,tag=!edge_grabbing,tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/walking/left_arm
execute if entity @s[tag=running,tag=!selected,tag=!guarding,tag=!edge_grabbing,tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/running/left_arm
execute if entity @s[tag=swimming,tag=!selected,tag=!guarding,tag=!dancing] run function medabots_server:animations/medabot/swimming/left_arm