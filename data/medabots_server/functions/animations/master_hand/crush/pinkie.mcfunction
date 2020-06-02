scoreboard players set @s[scores={AnimationProg=70}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 10f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[1] set value -20f
execute if entity @s[scores={AnimationProg=30}] run data modify entity @s Pose.Head[1] set value 20f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value -210f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=20..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=65}] run data modify entity @s Pose.Head[1] set value 0f
execute if entity @s[scores={AnimationProg=20..24}] rotated ~ 0 run teleport @s ^ ^-0.3 ^-0.4
execute if entity @s[scores={AnimationProg=25..29}] rotated ~ 0 run teleport @s ^ ^-0.05 ^-0.35
execute if entity @s[scores={AnimationProg=30..34}] rotated ~ 0 run teleport @s ^ ^0.4 ^-0.3
execute if entity @s[scores={AnimationProg=35..39}] rotated ~ 0 run teleport @s ^ ^0.4 ^0.1
tag @s[scores={AnimationProg=70}] remove crush