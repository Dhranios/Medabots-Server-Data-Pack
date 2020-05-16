scoreboard players set @s[scores={AnimationProg=18..}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute at @s[scores={AnimationProg=1}] run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={AnimationProg=2}] run teleport @s ~ ~ ~ ~-20 ~
execute at @s[scores={AnimationProg=3}] run teleport @s ~ ~ ~ ~-40 ~
execute at @s[scores={AnimationProg=4}] run teleport @s ~ ~ ~ ~-60 ~
execute at @s[scores={AnimationProg=5}] run teleport @s ~ ~ ~ ~-80 ~
execute at @s[scores={AnimationProg=6}] run teleport @s ~ ~ ~ ~-100 ~
execute at @s[scores={AnimationProg=7}] run teleport @s ~ ~ ~ ~-120 ~
execute at @s[scores={AnimationProg=8}] run teleport @s ~ ~ ~ ~-140 ~
execute at @s[scores={AnimationProg=9}] run teleport @s ~ ~ ~ ~-160 ~
execute at @s[scores={AnimationProg=10}] run teleport @s ~ ~ ~ ~-180 ~
execute at @s[scores={AnimationProg=11}] run teleport @s ~ ~ ~ ~-200 ~
execute at @s[scores={AnimationProg=12}] run teleport @s ~ ~ ~ ~-220 ~
execute at @s[scores={AnimationProg=13}] run teleport @s ~ ~ ~ ~-240 ~
execute at @s[scores={AnimationProg=14}] run teleport @s ~ ~ ~ ~-260 ~
execute at @s[scores={AnimationProg=15}] run teleport @s ~ ~ ~ ~-280 ~
execute at @s[scores={AnimationProg=16}] run teleport @s ~ ~ ~ ~-300 ~
execute at @s[scores={AnimationProg=17}] run teleport @s ~ ~ ~ ~-320 ~
execute at @s[scores={AnimationProg=18}] run teleport @s ~ ~ ~ ~-340 ~

execute at @s[tag=blade_1] run teleport @s ~ ~ ~ ~-40 ~
execute at @s[tag=blade_2] run teleport @s ~ ~ ~ ~-80 ~
execute at @s[tag=blade_3] run teleport @s ~ ~ ~ ~-120 ~
execute at @s[tag=blade_4] run teleport @s ~ ~ ~ ~-160 ~
execute at @s[tag=blade_5] run teleport @s ~ ~ ~ ~-200 ~
execute at @s[tag=blade_6] run teleport @s ~ ~ ~ ~-240 ~
execute at @s[tag=blade_7] run teleport @s ~ ~ ~ ~-280 ~
execute at @s[tag=blade_8] run teleport @s ~ ~ ~ ~-320 ~