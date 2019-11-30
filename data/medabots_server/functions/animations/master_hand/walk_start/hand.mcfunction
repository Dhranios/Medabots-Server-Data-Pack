scoreboard players add @s[scores={AnimationProg=..19}] AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..19}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 13
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value 90f