scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=3..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=13..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time