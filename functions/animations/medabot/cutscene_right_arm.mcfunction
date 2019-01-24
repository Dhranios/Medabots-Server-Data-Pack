# Move with
execute rotated ~ 0 run teleport @s ^-.25 ^-.35 ^-.3
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[distance=..0.1,tag=cutscene,tag=!medabot_model,limit=1] Rotation[0] 100

# Look up/down
execute if entity @s[tag=selected] unless entity @s[nbt={Pose:{Head:[0.0f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}
execute if entity @s[tag=selected] store result score #temp Time run data get entity @e[distance=..0.1,tag=cutscene,tag=!medabot_model,limit=1] Rotation[1] 1
execute if entity @s[tag=selected] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= #70 Constants
scoreboard players reset #temp Time

# Equipped arms
execute if entity @e[distance=..0.1,tag=cutscene,tag=!medabot_model,tag=right_arm_selected] run tag @s add selected
execute if entity @s[tag=selected] unless entity @e[distance=..0.1,tag=hostile,tag=cutscene,tag=right_arm_selected] run tag @s remove selected

# Walk animation
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.001f]}}
execute if entity @e[distance=..0.1,tag=cutscene,tag=!medabot_model,tag=walking] run tag @s add walking
data merge entity @s[tag=!selected,tag=!walking] {Pose:{Head:[0.0f,0.0f,0.001f]}}
execute at @e[tag=legs,nbt={ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]}] if score @e[distance=..0.1,tag=legs,limit=1] MedabotNr = @s MedabotNr run tag @s add two_legged
execute unless entity @s[tag=!walking] if entity @s[tag=!selected,tag=two_legged] run function medabots_server:animations/medabot/walking/two_legged/right_arm
execute unless entity @s[tag=!walking] if entity @s[tag=!selected,tag=!two_legged] run function medabots_server:animations/medabot/walking/other/right_arm
tag @s[tag=two_legged] remove two_legged
tag @s[tag=walking] remove walking