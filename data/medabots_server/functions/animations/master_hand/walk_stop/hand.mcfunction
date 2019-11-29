scoreboard players set @s[tag=walk_start] AnimationProg 0
tag @s remove walk_start
scoreboard players set @s[scores={AnimationProg=5}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s Pose.Head[0] set value 0f
tag @s[scores={AnimationProg=5}] remove walk_stop