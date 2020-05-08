scoreboard players set @s[scores={AnimationProg=15}] AnimationProg 1
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-20.0f,-20.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1..}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^-0.3 ^
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=6..9}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 24
execute if entity @s[scores={AnimationProg=11..14}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 24
scoreboard players reset #temp Time