scoreboard players set @s[scores={AnimationProg=180}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=15..17}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=18..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=55..57}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=58..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=105..107}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=108..110}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=151..160}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 12
execute if entity @s[scores={AnimationProg=171..180}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 12
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..6}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=7..12}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5

execute if entity @s[scores={AnimationProg=151..160}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=171..180}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=155..175}] rotated ~ 0 run teleport @s ^ ^-0.4 ^0.5
tag @s[scores={AnimationProg=180}] remove bombs