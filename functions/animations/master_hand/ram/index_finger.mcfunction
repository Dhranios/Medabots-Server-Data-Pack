scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 10f
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value 150f
execute if entity @s[scores={AnimationProg=81}] run data modify entity @s Pose.Head[0] set value -10f
execute if entity @s[scores={AnimationProg=98}] run data modify entity @s Pose.Head[0] set value 0f
scoreboard players reset #temp Time