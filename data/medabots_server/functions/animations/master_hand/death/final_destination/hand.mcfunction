scoreboard players set @s[scores={AnimationProg=15}] AnimationProg 1
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value -90f