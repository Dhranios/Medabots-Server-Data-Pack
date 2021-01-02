scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 4
execute if entity @s[scores={AnimationProg=1..15}] store result entity @s Pose.Head[0] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=16..45}] store result entity @s Pose.Head[0] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=46..60}] store result entity @s Pose.Head[0] float 0.25 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=60..}] AnimationProg 0
