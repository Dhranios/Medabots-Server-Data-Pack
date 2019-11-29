scoreboard players set @s[scores={AnimationProg=28..}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=5..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProg=15..22}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
scoreboard players reset #temp Time