scoreboard players set @s[scores={AnimationProg=90}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=2}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=3}] run data modify entity @s Pose.Head[2] set value -90f
execute if entity @s[scores={AnimationProg=30}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=31}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=32}] run data modify entity @s Pose.Head[2] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=61..67}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=68..74}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=75..81}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=82..89}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=90}] remove double_punch