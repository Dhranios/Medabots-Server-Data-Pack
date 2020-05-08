scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=10..11}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProg=12..13}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=30..31}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProg=32..33}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 15
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProg=62..70}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=71..77}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=78..84}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=85..91}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=92..99}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=100}] remove catch