scoreboard players set @s[tag=roll_start] AnimationProg 0
tag @s remove roll_start
scoreboard players set @s[scores={AnimationProg=18..}] AnimationProg 1
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[1] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..18}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 20
scoreboard players reset #temp Time
execute rotated ~ 0 run teleport @s ^0.43 ^ ^0.2 ~ 0