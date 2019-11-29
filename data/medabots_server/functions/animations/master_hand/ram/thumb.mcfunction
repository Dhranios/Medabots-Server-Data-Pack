scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 10f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value 114f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[2] set value 70f
execute if entity @s[scores={AnimationProg=81}] run data modify entity @s Pose.Head[2] set value 0f
execute if entity @s[scores={AnimationProg=81}] run data modify entity @s Pose.Head[0] set value -10f
execute if entity @s[scores={AnimationProg=98}] run data modify entity @s Pose.Head[0] set value 0f
tag @s[scores={AnimationProg=100}] remove ram