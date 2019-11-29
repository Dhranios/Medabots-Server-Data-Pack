scoreboard players set @s[scores={AnimationProg=70}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 10f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[1] set value -20f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value -180f
execute if entity @s[scores={AnimationProg=30}] run data modify entity @s Pose.Head[1] set value 20f
execute if entity @s[scores={AnimationProg=30}] run data modify entity @s Pose.Head[0] set value -90f
execute if entity @s[scores={AnimationProg=40}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=65}] run data modify entity @s Pose.Head[1] set value 0f
execute if entity @s[scores={AnimationProg=20..29}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^-0.3 ^-0.4
execute if entity @s[scores={AnimationProg=30..39}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.4 ^-0.3
tag @s[scores={AnimationProg=70}] remove crush