scoreboard players add @s[scores={AnimationProg=70}] AnimationProg 1
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value -180f
execute if entity @s[scores={AnimationProg=30}] run data modify entity @s Pose.Head[0] set value -90f
execute if entity @s[scores={AnimationProg=40}] run data modify entity @s Pose.Head[0] set value 0f
tag @s[scores={AnimationProg=70}] remove crush