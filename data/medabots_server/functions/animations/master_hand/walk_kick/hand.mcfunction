scoreboard players set @s[tag=walk_start] AnimationProg 0
tag @s remove walk_start
scoreboard players set @s[scores={AnimationProg=13}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=9..13}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=13}] remove walk_kick