scoreboard players add @s AnimationProg 1
data merge entity @s[scores={Time=1}] {Pose:{Head:[-90.0f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0
scoreboard players reset #temp Time