scoreboard players set @s[scores={AnimationProg=28..}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=9..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=19..26}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time