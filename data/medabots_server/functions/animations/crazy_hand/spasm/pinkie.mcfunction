scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=20..79}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 36
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=80..85}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProg=85..94}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProg=95..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=100}] remove spasm