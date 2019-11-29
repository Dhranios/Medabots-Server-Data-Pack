scoreboard players set @s[tag=fast_idle] AnimationProg 0
tag @s[tag=fast_idle] remove fast_idle
scoreboard players set @s[scores={AnimationProg=30}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=2}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=3}] run data modify entity @s Pose.Head[2] set value -90f
execute if entity @s[scores={AnimationProg=27}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=28}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=29}] run data modify entity @s Pose.Head[2] set value 0f
tag @s[scores={AnimationProg=30}] remove grab