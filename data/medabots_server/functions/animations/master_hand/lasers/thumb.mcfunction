scoreboard players set @s[scores={AnimationProg=200}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1


execute if entity @s[scores={AnimationProg=160..178}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=189..199}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 14
tag @s[scores={AnimationProg=200}] remove lasers
execute if entity @s[scores={AnimationProg=3..197}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.2 ^-0.2
scoreboard players reset #temp Time