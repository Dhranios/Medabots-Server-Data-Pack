tag @s remove grab
scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=76}] run data modify entity @s Pose.Head[2] set value 60f
execute if entity @s[scores={AnimationProg=78}] run data modify entity @s Pose.Head[2] set value 30f
execute if entity @s[scores={AnimationProg=80}] run data modify entity @s Pose.Head[2] set value 0f
execute if entity @s[scores={AnimationProg=80..84}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 24
execute if entity @s[scores={AnimationProg=91..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=..76}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^ ^1.3 ^
scoreboard players reset #temp Time
tag @s[scores={AnimationProg=100}] remove grab_success