scoreboard players set @s[scores={AnimationProg=69}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value -90f
execute if entity @s[scores={AnimationProg=11}] run data modify entity @s Pose.Head[0] set value 90f
execute if entity @s[scores={AnimationProg=60}] run data modify entity @s Pose.Head[0] set value 0f
tag @s[scores={AnimationProg=69}] remove drill