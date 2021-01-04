scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=41..50}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProg=71..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=41..50}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=71..80}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=80..}] AnimationProg 0