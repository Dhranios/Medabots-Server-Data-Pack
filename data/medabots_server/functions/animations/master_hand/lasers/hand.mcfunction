scoreboard players set @s[scores={AnimationProg=200}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=193..199}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
tag @s[scores={AnimationProg=200}] remove lasers
scoreboard players reset #temp Time