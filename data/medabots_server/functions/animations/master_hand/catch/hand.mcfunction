scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..6}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 30
execute if entity @s[scores={AnimationProg=21..26}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 30
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=27..31}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=66..70}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProg=71..77}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=78..84}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=85..91}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=92..99}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=100}] remove catch