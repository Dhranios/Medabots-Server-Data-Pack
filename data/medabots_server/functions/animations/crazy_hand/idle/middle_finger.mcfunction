scoreboard players set @s[scores={AnimationProg=13..}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-25.0f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..6}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProg=7..13}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
scoreboard players reset #temp Time
execute rotated ~ 0 run teleport @s ^ ^0.45 ^0.05