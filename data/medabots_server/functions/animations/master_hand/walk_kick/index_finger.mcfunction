scoreboard players set @s[tag=walk] AnimationProg 0
tag @s remove walk
scoreboard players set @s[scores={AnimationProg=10}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1..8}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^-0.3 ^0.4
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=9}] run data modify entity @s Pose.Head[0] set value 0f
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=10}] remove walk_kick