scoreboard players set @s[scores={AnimationProg=110}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=2}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=3}] run data modify entity @s Pose.Head[2] set value -90f
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=71..75}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=76..80}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 18
execute if entity @s[scores={AnimationProg=81..85}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=86..90}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 18
execute if entity @s[scores={AnimationProg=91..95}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=96..100}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=107}] run data modify entity @s Pose.Head[2] set value -60f
execute if entity @s[scores={AnimationProg=108}] run data modify entity @s Pose.Head[2] set value -30f
execute if entity @s[scores={AnimationProg=109}] run data modify entity @s Pose.Head[2] set value 0f
execute if entity @s[scores={AnimationProg=3..106}] rotated ~ 0 run teleport @s ^-0.5 ^0.3 ^0.5
tag @s[scores={AnimationProg=110}] remove gun_3