scoreboard players set @s[tag=walk_start] AnimationProg 0
tag @s remove walk_start
scoreboard players set @s[scores={AnimationProg=11..}] AnimationProg 0
execute if entity @s[scores={AnimationProg=0}] run data modify entity @s Pose.Head[0] set value 90f
scoreboard players add @s AnimationProg 1
execute at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^-0.3 ^0.4
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=4..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
scoreboard players reset #temp Time