scoreboard players add @s[scores={AnimationProg=..33}] AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[0] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=11..13}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=14..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=17..19}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=20..22}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=23..33}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
execute if entity @s[scores={AnimationProg=5..}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^ ^-0.5 ^0.6
scoreboard players reset #temp Time