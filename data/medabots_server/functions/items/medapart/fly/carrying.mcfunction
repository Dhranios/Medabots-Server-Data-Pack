teleport @s ~ 255 ~
teleport @s ~ ~ ~
scoreboard players add @e[tag=me,limit=1,scores={Fly=3},tag=!hot_air] FlyTime 1
scoreboard players operation #temp MedabotNr = @e[tag=me,limit=1] MedabotNr
execute as @e[type=minecraft:armor_stand,tag=medabot_model,tag=chest] if score @s MedabotNr = #temp MedabotNr run scoreboard players operation #temp MedabotRotation = @s MedabotRotation
scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[type=minecraft:armor_stand,tag=medabot_model,tag=chest] if score @s MedabotNr = #temp MedabotNr store result entity @s Rotation[0] float 0.001 run scoreboard players operation @s MedabotRotation = #temp MedabotRotation
tellraw @s {"score":{"objective":"MedabotRotation","name":"#temp"}}
scoreboard players reset #temp MedabotNr
scoreboard players reset #temp MedabotRotation