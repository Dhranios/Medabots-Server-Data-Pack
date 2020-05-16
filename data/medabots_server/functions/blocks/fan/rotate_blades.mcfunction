execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={Moving=1}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 12
execute if entity @s[scores={Moving=2}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 24
scoreboard players reset #temp Time