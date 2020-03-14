scoreboard players set @s[scores={AnimationProg=110}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value -130f
execute if entity @s[scores={AnimationProg=81}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=..81}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^ ^-0.3 ^0.4
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=81..87}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=88..94}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=95..101}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=102..109}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=110}] remove punch