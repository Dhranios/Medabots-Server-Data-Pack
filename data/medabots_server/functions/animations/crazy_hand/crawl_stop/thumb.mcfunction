scoreboard players set @s[tag=crawl] AnimationProg 0
tag @s remove crawl
scoreboard players set @s[scores={AnimationProg=15}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
execute if entity @s[scores={AnimationProg=11..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 6
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=15}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=..5}] rotated ~ 0 run teleport @s ^-1.3 ^ ^
tag @s[scores={AnimationProg=15}] remove crawl_stop