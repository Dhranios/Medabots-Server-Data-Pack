scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
data merge entity @s[scores={AnimationProg=4}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=4}] remove hurt
scoreboard players set @s[scores={AnimationProg=4..}] AnimationProg 0
