scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{LeftArm:[0.001f,0.001f,0.001f],RightArm:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0] 1
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=5..8}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 10
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 1
execute if entity @s[scores={AnimationProg=33..36}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=37..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 10
scoreboard players set @s[scores={AnimationProg=60..}] AnimationProg 0
scoreboard players reset #temp Time