scoreboard players set @s[scores={AnimationProg=120}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=20..29}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=30..65}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=66..75}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 9
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=118}] run data modify entity @s Pose.Head[0] set value 0f
tag @s[scores={AnimationProg=120}] remove jet