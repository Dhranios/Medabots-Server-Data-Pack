scoreboard players set @s[tag=walk_start] AnimationProg 0
tag @s remove walk_start
scoreboard players set @s[scores={AnimationProg=10}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=9}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=1..8}] at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.3 ^-0.4
tag @s[scores={AnimationProg=10}] remove walk_kick