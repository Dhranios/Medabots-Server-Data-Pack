execute at @s[scores={DeathTime=1..4}] run teleport @s ^ ^ ^-0.1
data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[10.0f,0.0f,0.0f]}}
data merge entity @s[scores={DeathTime=5}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
data merge entity @s[scores={DeathTime=20}] {Pose:{Head:[-10.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=20..21}] run teleport @s ^ ^ ^0.1
data merge entity @s[scores={DeathTime=25}] {Pose:{Head:[10.0f,0.0f,0.0f]}}
data merge entity @s[scores={DeathTime=30}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
data merge entity @s[scores={DeathTime=40}] {Pose:{Head:[10.0f,0.0f,0.0f]}}
data merge entity @s[scores={DeathTime=60}] {Pose:{Head:[35.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=60}] run teleport @s ^ ^-0.3 ^