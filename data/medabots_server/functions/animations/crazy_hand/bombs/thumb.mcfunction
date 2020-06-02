scoreboard players set @s[scores={AnimationProg=180}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=151..160}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProg=171..180}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..6}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=7..12}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5

execute if entity @s[scores={AnimationProg=151..160}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=171..180}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=..150}] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=151..154}] rotated ~ 0 run teleport @s ^-0.65 ^-0.8 ^
execute if entity @s[scores={AnimationProg=155..158}] rotated ~ 0 run teleport @s ^ ^-1.3 ^
execute if entity @s[scores={AnimationProg=159..162}] rotated ~ 0 run teleport @s ^0.65 ^-0.8 ^
execute if entity @s[scores={AnimationProg=163..166}] rotated ~ 0 run teleport @s ^1.3 ^-0.3 ^
execute if entity @s[scores={AnimationProg=167..170}] rotated ~ 0 run teleport @s ^0.65 ^-0.8 ^
execute if entity @s[scores={AnimationProg=171..174}] rotated ~ 0 run teleport @s ^ ^-1.3 ^
execute if entity @s[scores={AnimationProg=175..178}] rotated ~ 0 run teleport @s ^-0.65 ^-0.8 ^
execute if entity @s[scores={AnimationProg=179..180}] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
tag @s[scores={AnimationProg=180}] remove bombs