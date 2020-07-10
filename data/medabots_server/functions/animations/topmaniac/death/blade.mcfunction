scoreboard players add @s AnimationProg 1
execute at @s[scores={AnimationProg=1}] run teleport @s ~ ~0.9 ~ 0 0
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_0] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_1] {Pose:{Head:[0.001f,40.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_2] {Pose:{Head:[0.001f,80.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_3] {Pose:{Head:[0.001f,120.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_4] {Pose:{Head:[0.001f,160.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_5] {Pose:{Head:[0.001f,200.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_6] {Pose:{Head:[0.001f,240.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_7] {Pose:{Head:[0.001f,280.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_8] {Pose:{Head:[0.001f,320.0f,0.001f]}}
execute at @s[scores={AnimationProg=2..3}] at @s run teleport @s[tag=blade_0] ~ ~-0.45 ~
execute at @s[scores={AnimationProg=6..7}] at @s run teleport @s[tag=blade_1] ~ ~-0.45 ~
execute at @s[scores={AnimationProg=10..11}] at @s run teleport @s[tag=blade_2] ~ ~-0.45 ~
execute at @s[scores={AnimationProg=14..15}] at @s run teleport @s[tag=blade_3] ~ ~-0.45 ~
execute at @s[scores={AnimationProg=18..19}] at @s run teleport @s[tag=blade_4] ~ ~-0.45 ~
execute at @s[scores={AnimationProg=22..23}] at @s run teleport @s[tag=blade_5] ~ ~-0.45 ~
execute at @s[scores={AnimationProg=26..27}] at @s run teleport @s[tag=blade_6] ~ ~-0.45 ~
execute at @s[scores={AnimationProg=30..31}] at @s run teleport @s[tag=blade_7] ~ ~-0.45 ~
execute at @s[scores={AnimationProg=34..35}] at @s run teleport @s[tag=blade_8] ~ ~-0.45 ~
scoreboard players reset #temp Time