data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[-115.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=1}] run teleport @s ^ ^-1.05 ^.36
execute at @s[scores={DeathTime=2}] run teleport @s ^ ^-0.021 ^
execute at @s[scores={DeathTime=2}] if block ~ ~0.4 ~ minecraft:water run scoreboard players set @s DeathTime 1