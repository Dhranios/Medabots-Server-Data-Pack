scoreboard players set @s[scores={AnimationProg=69}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value -90f
execute if entity @s[scores={AnimationProg=11}] run data modify entity @s Pose.Head[0] set value 90f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=58..63}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=69}] remove drill