scoreboard players add @s AnimationProg 1
execute at @e[type=minecraft:spider,tag=this_topmaniac,limit=1] run teleport @s ~ ~-1.43 ~ ~ ~
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_0] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_1] {Pose:{Head:[0.001f,40.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_2] {Pose:{Head:[0.001f,80.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_3] {Pose:{Head:[0.001f,120.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_4] {Pose:{Head:[0.001f,160.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_5] {Pose:{Head:[0.001f,200.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_6] {Pose:{Head:[0.001f,240.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_7] {Pose:{Head:[0.001f,280.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s[tag=blade_8] {Pose:{Head:[0.001f,320.0f,0.001f]}}
execute if entity @s[scores={AnimationProg=2..}] at @s run teleport @s[tag=blade_0] ~ ~-0.9 ~
execute if entity @s[scores={AnimationProg=6..}] at @s run teleport @s[tag=blade_1] ~ ~-0.9 ~
execute if entity @s[scores={AnimationProg=10..}] at @s run teleport @s[tag=blade_2] ~ ~-0.9 ~
execute if entity @s[scores={AnimationProg=14..}] at @s run teleport @s[tag=blade_3] ~ ~-0.9 ~
execute if entity @s[scores={AnimationProg=18..}] at @s run teleport @s[tag=blade_4] ~ ~-0.9 ~
execute if entity @s[scores={AnimationProg=22..}] at @s run teleport @s[tag=blade_5] ~ ~-0.9 ~
execute if entity @s[scores={AnimationProg=26..}] at @s run teleport @s[tag=blade_6] ~ ~-0.9 ~
execute if entity @s[scores={AnimationProg=30..}] at @s run teleport @s[tag=blade_7] ~ ~-0.9 ~
execute if entity @s[scores={AnimationProg=34..}] at @s run teleport @s[tag=blade_8] ~ ~-0.9 ~
scoreboard players reset #temp Time