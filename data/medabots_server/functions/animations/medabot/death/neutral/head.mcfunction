data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=1..3}] run teleport @s ^ ^ ^0.1
execute at @s[scores={DeathTime=20..24}] run teleport @s ^ ^ ^-0.1
data merge entity @s[scores={DeathTime=60}] {Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=60}] run teleport @s ^ ^-1.1 ^0.8