scoreboard players set @s[scores={AnimationProg=30}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[2] set value 30f
execute if entity @s[scores={AnimationProg=2}] run data modify entity @s Pose.Head[2] set value 60f
execute if entity @s[scores={AnimationProg=3}] run data modify entity @s Pose.Head[2] set value 90f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=4..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 14
execute if entity @s[scores={AnimationProg=19..29}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 11
execute if entity @s[scores={AnimationProg=12}] run data modify entity @s Pose.Head[2] set value 70f
execute if entity @s[scores={AnimationProg=19}] run data modify entity @s Pose.Head[2] set value 90f
execute if entity @s[scores={AnimationProg=27}] run data modify entity @s Pose.Head[2] set value 60f
execute if entity @s[scores={AnimationProg=28}] run data modify entity @s Pose.Head[2] set value 30f
execute if entity @s[scores={AnimationProg=29}] run data modify entity @s Pose.Head[2] set value 0f
execute if entity @s[scores={AnimationProg=3..26}] rotated ~ 0 run teleport @s ^ ^1.3 ^
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=30}] remove grab