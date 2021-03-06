scoreboard players set @s[scores={AnimationProg=120}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=20}] run data modify entity @s Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProg=118}] run data modify entity @s Pose.Head[0] set value 0f
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=101..110}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=20..29}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=30..65}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProg=66..75}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=6..23}] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=22..25}] rotated ~ 0 run teleport @s ^0.65 ^0.8 ^
execute if entity @s[scores={AnimationProg=26..30}] rotated ~ 0 run teleport @s ^ ^1.3 ^
execute if entity @s[scores={AnimationProg=31..34}] rotated ~ 0 run teleport @s ^0.65 ^0.8 ^
execute if entity @s[scores={AnimationProg=35..36}] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=37..40}] rotated ~ 0 run teleport @s ^0.65 ^-0.8 ^
execute if entity @s[scores={AnimationProg=41..42}] rotated ~ 0 run teleport @s ^ ^-1.3 ^
execute if entity @s[scores={AnimationProg=43..46}] rotated ~ 0 run teleport @s ^-0.65 ^-0.8 ^
execute if entity @s[scores={AnimationProg=47..47}] rotated ~ 0 run teleport @s ^-1.3 ^-0.3 ^
execute if entity @s[scores={AnimationProg=48..51}] rotated ~ 0 run teleport @s ^-0.65 ^0.8 ^
execute if entity @s[scores={AnimationProg=52..52}] rotated ~ 0 run teleport @s ^ ^1.3 ^
execute if entity @s[scores={AnimationProg=53..56}] rotated ~ 0 run teleport @s ^0.65 ^0.8 ^
execute if entity @s[scores={AnimationProg=57..57}] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=58..61}] rotated ~ 0 run teleport @s ^0.65 ^-0.8 ^
execute if entity @s[scores={AnimationProg=62..66}] rotated ~ 0 run teleport @s ^ ^-1.3 ^
execute if entity @s[scores={AnimationProg=67..70}] rotated ~ 0 run teleport @s ^0.65 ^-0.8 ^
execute if entity @s[scores={AnimationProg=71..}] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
tag @s[scores={AnimationProg=120}] remove jet