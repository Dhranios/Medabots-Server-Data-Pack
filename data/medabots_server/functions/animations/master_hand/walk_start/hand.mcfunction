scoreboard players add @s[scores={AnimationProg=..19}] AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value -90f
execute if entity @s[scores={AnimationProg=10}] run data modify entity @s Pose.Head[0] set value -180f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value 90f