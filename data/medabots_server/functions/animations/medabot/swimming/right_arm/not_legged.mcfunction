scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute store result score #temp Time run data get entity @s Pose.Head[1] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=6..25}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=26..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 18
data modify entity @s[scores={AnimationProg=36..}] Pose.Head[2] set value 0.001f
scoreboard players set @s[scores={AnimationProg=36..}] AnimationProg 0
scoreboard players reset #temp Time