scoreboard players add @s AnimationProg 1
data merge entity @s[scores={Time=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time += #2 Constants
execute if entity @s[scores={AnimationProg=13..36}] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= #2 Constants
execute if entity @s[scores={AnimationProg=37..48}] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time += #2 Constants
execute store result score #temp Time run data get entity @s Pose.Head[1] 1
execute if entity @s[scores={AnimationProg=1..12}] store result entity @s Pose.Head[1] float 1 run scoreboard players operation #temp Time += #5 Constants
execute if entity @s[scores={AnimationProg=13..36}] store result entity @s Pose.Head[1] float 1 run scoreboard players operation #temp Time -= #5 Constants
execute if entity @s[scores={AnimationProg=37..48}] store result entity @s Pose.Head[1] float 1 run scoreboard players operation #temp Time += #5 Constants
scoreboard players set @s[scores={AnimationProg=48..}] AnimationProg 0
scoreboard players reset #temp Time