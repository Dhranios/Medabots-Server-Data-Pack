scoreboard players set @s[scores={AnimationProg=35}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=2}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=3}] run data modify entity @s Pose.Head[2] set value -90f
execute if entity @s[scores={AnimationProg=32}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=33}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=34}] run data modify entity @s Pose.Head[2] set value 0f
execute if entity @s[scores={AnimationProg=3..31}] rotated ~ 0 run teleport @s ^-0.5 ^0.4 ^0.5
tag @s[scores={AnimationProg=35}] remove slap