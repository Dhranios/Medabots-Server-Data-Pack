scoreboard players set @s[tag=walk] AnimationProg 0
tag @s remove walk
scoreboard players set @s[tag=walk_start] AnimationProg 0
tag @s remove walk_start
scoreboard players set @s[scores={AnimationProg=5}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 90f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=1..4}] rotated ~ 0 run teleport @s ^ ^0.3 ^-0.4
tag @s[scores={AnimationProg=5}] remove walk_stop