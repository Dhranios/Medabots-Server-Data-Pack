scoreboard players set @s[scores={AnimationProg=60}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=40..}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=40..}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=60}] remove dash