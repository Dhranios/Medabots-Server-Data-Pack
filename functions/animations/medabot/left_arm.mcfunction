# Guarding
execute if entity @a[nbt={SelectedItemSlot:0},tag=this_medabot,limit=1] run tag @s add guarding
execute if entity @a[nbt={SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]},tag=!static_fly,tag=this_medabot,limit=1] run tag @s remove guarding
execute if entity @e[type=!minecraft:player,tag=this_medabot,limit=1,tag=legs_selected] run tag @s add guarding
execute if entity @e[type=!minecraft:player,tag=fly_legs,tag=!static_fly,tag=this_medabot,limit=1,tag=legs_selected] run tag @s remove guarding
execute if entity @e[scores={NoDefendTime=1..}] run tag @s remove guarding
data merge entity @s[tag=!guarding,tag=was_guarding] {Pose:{Head:[0.0f,0.0f,0.001f]}}
data merge entity @s[tag=guarding] {Pose:{Head:[-90.0f,48.0f,0.001f]}}

# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s[tag=!guarding] ^.25 ^.03 ^
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s[tag=guarding] ^.2 ^.03 ^
execute if entity @s[tag=!was_selected] store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,tag=chest,limit=1] Rotation[0] 100

# Equipped arms
execute if entity @a[nbt={SelectedItemSlot:1},tag=this_medabot,limit=1] run tag @s add selected
execute if entity @e[type=!minecraft:player,tag=this_medabot,limit=1,tag=left_arm_selected] run tag @s add selected
data merge entity @s[tag=!selected,tag=was_selected] {Pose:{Head:[0.0f,0.0f,0.001f]}}

# Look up/down
execute if entity @s[tag=selected] unless entity @s[nbt={Pose:{Head:[0.0f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}
execute if entity @s[tag=selected] store result score #temp Time run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[1] 1
execute if entity @s[tag=selected] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= #70 Constants
execute if entity @s[tag=selected] store result entity @s Pose.Head[0] float 1 run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[0] 1
scoreboard players reset #temp Time

# Walk animation
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s[tag=!sneak_pos] {Pose:{Head:[0.0f,0.0f,0.001f]}}
execute if entity @e[tag=dancing,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add dancing
execute if entity @e[tag=walking,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add walking
execute if entity @e[tag=running,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add running
execute if entity @e[tag=sneaking,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add sneaking
execute if entity @e[tag=edge_grabbing,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add edge_grabbing
data merge entity @s[tag=!edge_grabbing,tag=was_edge_grabbing] {Pose:{Head:[0.0f,0.0f,0.001f]}}
execute if entity @e[nbt={OnGround:0b},tag=this_medabot,tag=!medabot_model,limit=1] run tag @s[tag=!fly,tag=!float] add in_air
data merge entity @s[tag=!selected,tag=!guarding,tag=!walking,tag=!running,tag=!sneaking,tag=!edge_grabbing,tag=!dancing] {Pose:{Head:[0.0f,0.0f,0.001f]}}
tag @s[tag=walk_animation_other_way,tag=!walking,tag=!running,tag=!sneaking] remove walk_animation_other_way
execute if entity @e[tag=this_medabot,tag=leg,limit=1] run tag @s add has_legs
execute if entity @e[tag=this_medabot,tag=hips,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"fly"}}}]}] run tag @s add fly
execute if entity @e[tag=this_medabot,tag=hips,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"float"}}}]}] run tag @s add float
execute if entity @e[tag=this_medabot,tag=hips,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]}] run tag @s add two_legged
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[tag=!selected,tag=!guarding,tag=has_legs,tag=!edge_grabbing] run function medabots_server:animations/medabot/walking/left_arm_with_legs
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[tag=!selected,tag=!guarding,tag=!has_legs,tag=!edge_grabbing] run function medabots_server:animations/medabot/walking/left_arm
data merge entity @s[tag=!selected,tag=edge_grabbing] {Pose:{Head:[-100.0f,0.0f,0.001f]}}
tag @s[tag=two_legged] remove two_legged
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[tag=was_selected] remove was_selected
tag @s[tag=selected] add was_selected
tag @s[tag=selected] remove selected
tag @s[tag=was_guarding] remove was_guarding
tag @s[tag=guarding] add was_guarding
tag @s[tag=guarding] remove guarding
tag @s[tag=was_edge_grabbing] remove was_edge_grabbing
tag @s[tag=edge_grabbing] add was_edge_grabbing
tag @s[tag=edge_grabbing] remove edge_grabbing
tag @s[tag=!in_air,tag=sneaking] remove sneaking
tag @s[tag=!in_air,tag=walking] remove walking
tag @s[tag=!in_air,tag=running] remove running
tag @s[tag=in_air] remove in_air
execute if entity @s[tag=dancing] run function medabots_server:animations/medabot/dancing/left_arm