scoreboard players set @s[scores={AnimationProg=85}] AnimationProg 72
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=73}] {Pose:{Head:[-25.0f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 45
execute if entity @s[scores={AnimationProg=57..62}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=67..72}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=73..75}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=79..81}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time