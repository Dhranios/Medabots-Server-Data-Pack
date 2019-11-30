scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 10f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value 140f
execute if entity @s[scores={AnimationProg=81}] run data modify entity @s Pose.Head[0] set value -10f
execute if entity @s[scores={AnimationProg=98}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=20..80}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.7 ^0.5
tag @s[scores={AnimationProg=100}] remove ram