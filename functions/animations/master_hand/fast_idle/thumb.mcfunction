scoreboard players set @s[scores={AnimationProg=14}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=5..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=10..13}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time