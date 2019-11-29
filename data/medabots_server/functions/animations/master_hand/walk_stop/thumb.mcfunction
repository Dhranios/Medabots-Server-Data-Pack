scoreboard players set @s[tag=walk_start] AnimationProg 0
tag @s remove walk_start
scoreboard players set @s[scores={AnimationProg=5}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s Pose.Head[1] set value 0f
execute if entity @s[scores={AnimationProg=1..4}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
tag @s[scores={AnimationProg=5}] remove walk_stop