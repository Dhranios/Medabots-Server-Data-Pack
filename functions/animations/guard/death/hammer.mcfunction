scoreboard players add @s[tag=dying] DeathTime 1
data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={DeathTime=1}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 180
execute if entity @s[scores={DeathTime=2}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 180
execute if entity @s[scores={DeathTime=2..3}] at @s run teleport @s ~ ~0.1 ~
execute if entity @s[scores={DeathTime=4..5}] at @s run teleport @s ~ ~-0.1 ~
execute if entity @s[scores={DeathTime=20}] run data merge entity @s {Pose:{Head:[10.0f,0.001f,0.001f]}}
execute if entity @s[scores={DeathTime=21}] run data merge entity @s {Pose:{Head:[13.0f,0.001f,0.001f]}}
execute if entity @s[scores={DeathTime=22}] run data merge entity @s {Pose:{Head:[10.0f,0.001f,0.001f]}}
execute if entity @s[scores={DeathTime=23}] run data merge entity @s {Pose:{Head:[13.0f,0.001f,0.001f]}}
execute if entity @s[scores={DeathTime=24}] run data merge entity @s {Pose:{Head:[10.0f,0.001f,0.001f]}}
execute if entity @s[scores={DeathTime=50..}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 45
scoreboard players reset #temp Time
tag @s[scores={DeathTime=70}] add dead