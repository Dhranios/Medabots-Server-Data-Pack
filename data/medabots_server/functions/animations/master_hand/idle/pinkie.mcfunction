scoreboard players set @s[scores={AnimationProg=28..}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=11..18}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time