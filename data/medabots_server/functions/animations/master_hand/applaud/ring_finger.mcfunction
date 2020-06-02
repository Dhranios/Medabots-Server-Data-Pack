scoreboard players set @s[scores={AnimationProg=90}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=2}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=3}] run data modify entity @s Pose.Head[2] set value -90f
execute if entity @s[scores={AnimationProg=73}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=74}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=75}] run data modify entity @s Pose.Head[2] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=71..75}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
execute if entity @s[scores={AnimationProg=76..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProg=81..85}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
execute if entity @s[scores={AnimationProg=86..89}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 6
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=3..73}] rotated ~ 0 run teleport @s ^-0.5 ^0.4 ^0.5
tag @s[scores={AnimationProg=90}] remove applaud