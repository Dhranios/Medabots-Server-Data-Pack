scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=20..22}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=24..26}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=40..42}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=44..46}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=60..62}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=64..66}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=76}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=78}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=80}] run data modify entity @s Pose.Head[2] set value 0f
execute if entity @s[scores={AnimationProg=80..84}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 30
execute if entity @s[scores={AnimationProg=91..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=..76}] at @e[tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^-0.5 ^0.4 ^0.5
scoreboard players reset #temp Time