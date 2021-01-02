scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 18
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
tag @s[scores={AnimationProg=20}] remove attack
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0
scoreboard players reset #temp Time