scoreboard players set @s[scores={AnimationProg=180}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..6}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=7..12}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5

execute if entity @s[scores={AnimationProg=151..160}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=171..180}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=180}] remove bombs