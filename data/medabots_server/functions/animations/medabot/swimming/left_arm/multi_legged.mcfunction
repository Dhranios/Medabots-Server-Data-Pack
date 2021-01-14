scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=5..12}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=13..16}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 10
data modify entity @s[scores={AnimationProg=36..}] Pose.Head[0] set value 0.001f
data modify entity @s[scores={AnimationProg=36..}] Pose.Head[2] set value 0.001f
scoreboard players set @s[scores={AnimationProg=36..}] AnimationProg 0
scoreboard players reset #temp Time