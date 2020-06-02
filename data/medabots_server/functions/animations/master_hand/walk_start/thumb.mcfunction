scoreboard players add @s[scores={AnimationProg=..19}] AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..19}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[1] set value -60f
execute if entity @s[scores={AnimationProg=1..9}] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=10..19}] rotated ~ 0 run teleport @s ^1.3 ^0.45 ^
execute if entity @s[scores={AnimationProg=20}] rotated ~ 0 run teleport @s ^1.3 ^0.6 ^