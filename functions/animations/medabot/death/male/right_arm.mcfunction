data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[30.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=1..4}] run teleport @s ^ ^ ^-0.1
data merge entity @s[scores={DeathTime=5}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
data merge entity @s[scores={DeathTime=20..21}] {Pose:{Head:[30.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=20..21}] run teleport @s ^ ^ ^0.1
data merge entity @s[scores={DeathTime=22}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
data merge entity @s[scores={DeathTime=60}] {Pose:{Head:[-35.0f,-40.0f,0.0f]}}
execute at @s[scores={DeathTime=60}] run teleport @s ^ ^-0.35 ^0.05