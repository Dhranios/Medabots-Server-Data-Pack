scoreboard players set @s[scores={AnimationProg=90}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=2}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=3}] run data modify entity @s Pose.Head[2] set value -90f
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=71..75}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=76..80}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=87}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=88}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=89}] run data modify entity @s Pose.Head[2] set value 0f
tag @s[scores={AnimationProg=90}] remove gun_1