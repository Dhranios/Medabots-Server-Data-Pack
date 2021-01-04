scoreboard players add @s AnimationProg 2
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-90.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1] 1
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 30
execute if entity @s[scores={AnimationProg=4..9}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 30
execute if entity @s[scores={AnimationProg=10..12}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 30
scoreboard players set @s[scores={AnimationProg=12..}] AnimationProg 0
scoreboard players reset #temp Time