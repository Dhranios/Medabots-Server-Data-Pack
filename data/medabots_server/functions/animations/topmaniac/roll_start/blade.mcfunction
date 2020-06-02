scoreboard players add @s[scores={AnimationProg=..10}] AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s[tag=blade_0] Pose.Head[1] set value 0f
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s[tag=blade_1] Pose.Head[1] set value 40f
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s[tag=blade_2] Pose.Head[1] set value 80f
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s[tag=blade_3] Pose.Head[1] set value 120f
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s[tag=blade_4] Pose.Head[1] set value 160f
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s[tag=blade_5] Pose.Head[1] set value 200f
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s[tag=blade_6] Pose.Head[1] set value 240f
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s[tag=blade_7] Pose.Head[1] set value 280f
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s[tag=blade_8] Pose.Head[1] set value 320f
execute if entity @s[scores={AnimationProg=10}] run data modify entity @s Pose.Head[2] set value -90f
execute rotated ~ 0 run teleport @s[scores={AnimationProg=5..}] ^0.43 ^ ^0.2 ~ 0