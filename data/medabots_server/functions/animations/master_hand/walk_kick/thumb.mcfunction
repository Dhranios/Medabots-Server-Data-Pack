scoreboard players set @s[tag=walk] AnimationProg 0
tag @s remove walk
scoreboard players set @s[tag=walk_start] AnimationProg 0
tag @s remove walk_start
scoreboard players set @s[scores={AnimationProg=13}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=9}] run data modify entity @s Pose.Head[1] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=9..13}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 34
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=1..8}] rotated ~ 0 run teleport @s ^1.3 ^0.6 ^
tag @s[scores={AnimationProg=13}] remove walk_kick