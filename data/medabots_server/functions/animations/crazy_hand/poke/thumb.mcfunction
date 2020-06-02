scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=3..98}] rotated ~ 0 run teleport @s ^-1.1 ^-0.3 ^
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 20
execute if entity @s[scores={AnimationProg=5}] run data modify entity @s Pose.Head[2] set value -80f
execute if entity @s[scores={AnimationProg=96}] run data modify entity @s Pose.Head[2] set value 0f
execute if entity @s[scores={AnimationProg=96..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 20
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=100}] remove poke