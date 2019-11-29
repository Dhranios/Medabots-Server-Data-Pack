scoreboard players add @s[scores={AnimationProg=..19}] AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value -90f
execute if entity @s[scores={AnimationProg=10}] run data modify entity @s Pose.Head[0] set value -180f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value -120f
execute if entity @s[scores={AnimationProg=1..9}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.3 ^-0.4
execute if entity @s[scores={AnimationProg=10..19}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.4 ^-0.5
execute if entity @s[scores={AnimationProg=20}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^-0.3 ^0.4