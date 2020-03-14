scoreboard players add @s[scores={AnimationProg=70}] AnimationProg 1
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value -210f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=20..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=70}] remove crush