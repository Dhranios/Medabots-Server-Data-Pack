scoreboard players add @s[tag=dying] DeathTime 1
data merge entity @s[scores={DeathTime=1}] {Pose:{LeftArm:[0.001f,0.001f,0.001f],RightArm:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={DeathTime=2..3}] at @s run teleport @s ~ ~0.1 ~
execute if entity @s[scores={DeathTime=4..5}] at @s run teleport @s ~ ~-0.1 ~
tag @s[scores={DeathTime=70}] add dead