scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 10f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value 104f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[2] set value -70f
execute if entity @s[scores={AnimationProg=81}] run data modify entity @s Pose.Head[2] set value 0f
execute if entity @s[scores={AnimationProg=81}] run data modify entity @s Pose.Head[0] set value -10f
execute if entity @s[scores={AnimationProg=98}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=20..80}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^-0.3 ^-0.1
tag @s[scores={AnimationProg=100}] remove ram