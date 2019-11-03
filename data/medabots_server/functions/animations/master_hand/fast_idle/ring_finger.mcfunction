scoreboard players set @s[scores={AnimationProg=14}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=2..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
execute if entity @s[scores={AnimationProg=7..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 6
scoreboard players reset #temp Time