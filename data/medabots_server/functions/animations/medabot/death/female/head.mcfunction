execute at @s[scores={DeathTime=2..4}] run teleport @s ^ ^ ^-0.1
execute at @s[scores={DeathTime=20..21}] run teleport @s ^ ^ ^0.1
data merge entity @s[scores={DeathTime=60}] {Pose:{Head:[35.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=60}] run teleport @s ^ ^-0.5 ^