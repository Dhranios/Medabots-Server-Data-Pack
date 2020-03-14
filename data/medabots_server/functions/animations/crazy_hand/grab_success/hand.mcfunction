tag @s remove grab
scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=76}] run data modify entity @s Pose.Head[2] set value 60f
execute if entity @s[scores={AnimationProg=78}] run data modify entity @s Pose.Head[2] set value 30f
execute if entity @s[scores={AnimationProg=80}] run data modify entity @s Pose.Head[2] set value 0f
tag @s[scores={AnimationProg=100}] remove grab_success