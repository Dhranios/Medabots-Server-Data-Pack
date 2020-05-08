scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=8..14}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
tag @s[scores={AnimationProg=20}] remove sweep
scoreboard players reset #temp Time