scoreboard players add @s[scores={AnimationProg=..10}] AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=10}] run data modify entity @s Pose.Head[2] set value -90f
execute at @e[type=minecraft:spider,tag=this_topmaniac,limit=1] rotated ~ 0 run teleport @s[scores={AnimationProg=5..}] ^0.43 ^ ^0.2 ~ ~