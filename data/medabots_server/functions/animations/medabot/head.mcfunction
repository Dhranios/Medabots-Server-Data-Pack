execute if entity @s[tag=!separated] run function medabots_server:animations/medabot/separate_chest

# Move with
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s ^ ^.1 ^

# Look left/right
execute as @e[tag=this_medabot,tag=chest,limit=1] if entity @s[scores={MedabotRotation=..2147483647}] store result score #temp MedabotRotation run data get entity @s Rotation[0] 1000
execute store result score @s HomeRot run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[0] 1000
scoreboard players add @s[scores={HomeRot=..0}] HomeRot 360000
scoreboard players operation @s RotationDif = #temp MedabotRotation
execute if entity @s[scores={RotationDif=..90000,HomeRot=270000..}] run scoreboard players add @s RotationDif 360000
execute if entity @s[scores={RotationDif=270000..,HomeRot=..90000}] run scoreboard players remove @s RotationDif 360000
scoreboard players operation @s RotationDif -= @s HomeRot
execute unless entity @s[scores={RotationDif=-180000..}] run scoreboard players add @s RotationDif 360000
execute unless entity @s[scores={RotationDif=..180000}] run scoreboard players remove @s RotationDif 360000
execute if entity @s[scores={RotationDif=..-60000}] run scoreboard players add #temp MedabotRotation 60000
execute if entity @s[scores={RotationDif=60000..}] run scoreboard players remove #temp MedabotRotation 60000
execute if score #temp MedabotRotation matches 360000.. run scoreboard players remove #temp MedabotRotation 360000
execute if score #temp MedabotRotation matches ..0 run scoreboard players add #temp MedabotRotation 360000
execute if entity @s[scores={RotationDif=-60000..60000}] store result entity @s Rotation[0] float 0.001 run scoreboard players get @s HomeRot
execute unless entity @s[scores={RotationDif=-60000..60000}] store result entity @s Rotation[0] float 0.001 run scoreboard players get #temp MedabotRotation
scoreboard players reset #temp MedabotRotation

# Look up/down
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result entity @s Pose.Head[0] float 0.8 run data get entity @e[tag=this_medabot,limit=1] Rotation[1] 1