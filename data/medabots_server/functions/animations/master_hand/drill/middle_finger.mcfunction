scoreboard players set @s[scores={AnimationProg=69}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value -90f
execute if entity @s[scores={AnimationProg=11}] run data modify entity @s Pose.Head[0] set value 90f
execute if entity @s[scores={AnimationProg=63}] run data modify entity @s Pose.Head[0] set value 60f
execute if entity @s[scores={AnimationProg=64}] run data modify entity @s Pose.Head[0] set value 30f
execute if entity @s[scores={AnimationProg=65}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=11..60}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^-0.3 ^0.4
execute if entity @s[scores={AnimationProg=1..10}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.3 ^-0.4
tag @s[scores={AnimationProg=69}] remove drill