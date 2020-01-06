execute if entity @s[tag=!separated] run function medabots_server:animations/medabot/separate_chest

# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s ^ ^.1 ^

# Look left/right
execute if entity @e[tag=edge_grabbing,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add edge_grabbing
execute as @e[tag=this_medabot,tag=chest,limit=1] if entity @s[scores={MedabotRotation=..2147483647}] run scoreboard players operation #temp MedabotRotation = @s MedabotRotation
execute store result score @s HomeRot run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[0] 1000
scoreboard players add @s[scores={HomeRot=..0}] HomeRot 360000
scoreboard players operation @s RotationDif = #temp MedabotRotation
execute if entity @s[scores={RotationDif=..90000,HomeRot=270000..}] run scoreboard players add @s RotationDif 360000
execute if entity @s[scores={RotationDif=270000..,HomeRot=..90000}] run scoreboard players remove @s RotationDif 360000
scoreboard players operation @s RotationDif -= @s HomeRot
execute unless entity @s[scores={RotationDif=-50000..50000}] run scoreboard players operation @s HomeRot -= RotationDif
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s HomeRot

# Look up/down
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result entity @s Pose.Head[0] float 0.8 run data get entity @e[tag=this_medabot,limit=1] Rotation[1] 1

tag @s[tag=edge_grabbing] remove edge_grabbing
tag @s[tag=sneak_pos] remove sneak_pos