scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=3..98}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.3 ^0.4
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 33
execute if entity @s[scores={AnimationProg=96..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 33
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=100}] remove poke